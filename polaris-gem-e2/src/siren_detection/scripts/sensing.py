from imp import acquire_lock
import cv2
import numpy as np
import matplotlib.pyplot as plt
import soundcard as sc                  # https://github.com/bastibe/SoundCard
import threading, queue
import time
import os
# from pythoncom import CoInitializeEx
# from pythoncom import CoUninitialize
from pyAudioAnalysis import audioBasicIO
from pyAudioAnalysis import ShortTermFeatures
#import noisereduce as nr
import torch
import torch.nn as nn
from torch.utils.data import DataLoader
import torch.optim as optim
from torch.autograd import Variable
import torch.nn.functional as F
import scipy
from scipy import fftpack
from scipy import signal, misc
from scipy.signal import find_peaks

import torch

#yolo = torch.hub.load(r'/home/gem/demo_ws/src/vehicle_drivers/gem_vision/scripts/yolov5', 'custom', path=r'/home/gem/demo_ws/src/vehicle_drivers/gem_vision/scripts/yolov5/yolov5s.pt',  source = 'local')



def braking_force(data_class, dash, force):
    image_w_braking_force = dash.copy()

    w = 1272 - 648

    dw = int(force * w)
    
    # Start coordinate, here (5, 5)
    # represents the top left corner of rectangle
    start_point = (648, 8)
    
    # Ending coordinate, here (220, 220)
    # represents the bottom right corner of rectangle
    end_point = (648 + dw, 233)
    
    # Blue color in BGR
    color = (255, 255, 255)
    
    # Line thickness of 2 px
    thickness = -1
    
    # Using cv2.rectangle() method
    # Draw a rectangle with blue line borders of thickness of 2 px
    image_w_braking_force = cv2.rectangle(image_w_braking_force, start_point, end_point, color, thickness)

    out = cv2.putText(image_w_braking_force, 'Emergency Siren Confidence: {:.1g}'.format(getattr(data_class, "siren_confidence")), (648, 350), cv2.FONT_HERSHEY_SIMPLEX, 
                            1.1, (255, 255, 255), 2, cv2.LINE_AA)



    return image_w_braking_force





def camera_thread(cap, data_class, camera_lock):   
    """Thread for collecting data from Camera

    Args:
        data_class (class): Stores our Real-Time Mic and Camera Data
        camera_lock (lock): Camera Lock
    """
    count = 0
    img = cv2.imread('dash.png')
    dash = cv2.resize(img, (1280, 720)) 
    while(1):
        check, frame = cap.read()
        ##################################################################################
        
        # if count % 30 == 0:
        #     out = yolo(frame[:, :, ::-1])
        #     print(out)

        data_class.camera_insert(frame)
       
        ##################################################################################
        if check == 0:
            cap.set(cv2.CAP_PROP_POS_FRAMES, 0)
            break
        
        image = cv2.putText(frame, 'Emergency Siren Confidence:     {:.1g}'.format(getattr(data_class, "siren_confidence")), (0, 30), cv2.FONT_HERSHEY_SIMPLEX, 
                            1, (255, 0, 0), 2, cv2.LINE_AA)

        
        image = cv2.putText(image, 'Emergency Light Confidence:     {:.1g}'.format(getattr(data_class, "light_confidence")), (0, 60), cv2.FONT_HERSHEY_SIMPLEX, 
                            1, (255, 0, 0), 2, cv2.LINE_AA)
 
       
        force = np.random.uniform(0, 1)
        #print(force)
        dash_new = braking_force(data_class, dash, force)
         #cv2.imshow("Frame", image)
        cv2.imshow("Dash", dash_new)
        k = cv2.waitKey(5) & 0xFF
        if k == ord('q'):
            break

    cv2.destroyAllWindows()
    cap.release()  


def mic_thread(data_class, mic_lock):
    """Thread for collecting data from Microphone

    Args:
        data_class (class): Stores our Real-Time Mic and Camera Data
        mic_lock (lock): Microphone Lock
    """
    #res = CoInitializeEx(0)
    default_mic = sc.default_microphone()
    with default_mic.recorder(samplerate=48000) as mic:
       
        data = mic.record()
        #data_class.mic_insert_init(data)

        sample = np.array(mic.record(numframes=4800), dtype=np.float32)
        while(1):
            data = np.array(mic.record(numframes=4800), dtype=np.float32)
            
            ##################################################################################
            mic_lock.acquire()
            if(sample.shape[0] == 48000):
                data_class.mic_insert(sample)
                sample = data
            else:
                sample = np.concatenate((sample, data), axis = 0)
            mic_lock.release()
            ##################################################################################



