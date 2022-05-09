#!/usr/bin/env python
from imp import acquire_lock
from inspect import getargs
import multiprocessing as mp
import cv2
import numpy as np
import matplotlib.pyplot as plt
import soundcard as sc                  # https://github.com/bastibe/SoundCard
import threading, queue
import time
import rospy
from sensor_msgs.msg import Joy

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
sigmoid = nn.Sigmoid()
import scipy
from scipy import fftpack
from scipy import signal, misc
from scipy.signal import find_peaks

from data import Data

from sensing import camera_thread
from sensing import mic_thread 

from perception import detectSiren
from perception import detectLights

stop_break = False
from pacmod_msgs.msg import PositionWithSpeed, PacmodCmd
from std_msgs.msg import String, Bool, Float32, Float64





# yolo = torch.hub.load('ultralytics/yolov5', 'yolov5s')
# print(model)

# class brake_thread():
#     def __init__(self):
#         self._running = True
#     def terminate(self):
#         self._running = False
#     def run(self):
#         while(self._running == True):
#             joy_pub = rospy.Publisher('/game_control/joy', Joy, queue_size=1)
#             joy_cmd = Joy()
#             i = 0
#             rate = rospy.Rate(10) # 10hz
#             i +=1
#             while(1):
#                 joy_cmd.axes = (-0.0, 6.103701889514923e-05, -0.01, -0.0, 6.103701889514923e-05, 1.0, -0.0, -0.0)
#                 joy_cmd.buttons = (0,0,0,0,0,0,0,0,0,0,0)
#                 joy_pub.publish(joy_cmd)
#                 rate.sleep()

def disable_controller(joy_pub):
    #enable_pub = rospy.Publisher("/pacmod/as_tx/enable", Bool, queue_size=1)
    #joy_pub = rospy.Publisher('/game_control/joy', Joy, queue_size=1)



    joy_cmd = Joy()
    joy_cmd.axes = (-0.0, 6.103701889514923e-05, 1.0, -0.0,         # Random Joy Axes Valujes
                    6.103701889514923e-05, 1.0, -0.0, -0.0)
    joy_cmd.buttons = (0,0,0,0,0,0,1,0,0,0,0)                        # Set Disable Buttons
    joy_pub.publish(joy_cmd)                                         # Send to Topic                 
    return 


def brake(brake_pub, joy_pub):
     
    #brake_pub = rospy.Publisher('/pacmod/as_rx/brake_cmd', PacmodCmd, queue_size=1)

    
    brake_cmd = PacmodCmd()
    brake_cmd.enable = False
    brake_cmd.clear  = False
    brake_cmd.ignore = False
    brake_cmd.f64_cmd = 0.5
    brake_pub.publish(brake_cmd)
    return






def unbrake(brake_pub, joy_pub):
    
    # Set up Publishers
    #enable_pub = rospy.Publisher("/pacmod/as_tx/enable", Bool, queue_size=1)
    #joy_pub = rospy.Publisher('/game_control/joy', Joy, queue_size=1)
    #brake_pub = rospy.Publisher('/pacmod/as_rx/brake_cmd', PacmodCmd, queue_size=1)

    
    # # Send Joy Message
    # joy_cmd = Joy()
    # joy_cmd.axes = (-0.0, 6.103701889514923e-05, 1.0, -0.0, 6.103701889514923e-05, 1.0, -0.0, -0.0)
    # joy_cmd.buttons = (0,0,0,0,0,0,1,1,0,0,0)
    # joy_pub.publish(joy_cmd)

    # Send Brake Message
    brake_cmd = PacmodCmd()
    brake_cmd.enable = False
    brake_cmd.clear  = False
    brake_cmd.ignore = False
    brake_cmd.f64_cmd = 0.01
    brake_pub.publish(brake_cmd)

    return 

# def listener():

#     rospy.init_node('listener', anonymous=True)

#     #rospy.Subscriber("", , brake)

#     # spin() simply keeps python from exiting until this node is stopped
#     rospy.spin()


def real_time(data_class, mic_lock, camera_lock):
    """Thread used for processing Mic and Camera data for Emergency
       Vehichle Detection

    Args:
        data_class (class): Stores our Real-Time Mic and Camera Data
        mic_lock (lock): Microphone Lock
        camera_lock (lock): Camera Lock
    """   
    previous_state = False

    joy_pub = rospy.Publisher('/game_control/joy', Joy, queue_size=1)
    brake_pub = rospy.Publisher('/pacmod/as_rx/brake_cmd', PacmodCmd, queue_size=1)
    
    while(1):
        time.sleep(0.5)

        # If a sample is avaliable
        if(getattr(data_class, "q_mic").qsize() > 0):

            # Run Siren Model 
            siren_out = detectSiren(data_class.mic_get_sample())
            setattr(data_class, "siren_confidence", float(siren_out))
            state_out = data_class.siren_update()

            # if(state_out == True):
            #     disable_controller()
            #     while(state_out == True):
            #         print("Breaking")
            #         while(1):
            #             brake()
            #         # Run Siren Model
            #         siren_out = detectSiren(data_class.mic_get_sample())
            #         setattr(data_class, "siren_confidence", float(siren_out))
            #         state_out = data_class.siren_update()
            #         print(siren_out, state_out)

            #     unbrake()

            print(siren_out, state_out)
            if(state_out == True):
                # disable_controller(joy_pub)
                while(True):
                    # brake(brake_pub, joy_pub)
                    siren_out = detectSiren(data_class.mic_get_sample())
                    setattr(data_class, "siren_confidence", float(siren_out))
                    state_out = data_class.siren_update()
                    print(siren_out, state_out)
                    if(state_out == False):
                        # unbrake(brake_pub, joy_pub)
                        break
                # continue
            
                        


                # if(state_out == False and previous_state == True):
                #     print("UNBRAKE")
                #     #joy_state_out = unbrake(joy_state) 
                    
                #     #joy_state = joy_state_out
                #     previous_state = False
    
                
            
            
            
            
            
            
            
            
            # siren_out = detectSiren(data_class.mic_get_sample())
            # setattr(data_class, "siren_confidence", float(siren_out))
            # state_out = data_class.siren_update()

            # #Initiate Breaking
            # if(state_out == True):
            #     disable_controller()
            #     while(state_out == True):
            #         # print("in while")
            #         brake()
            #         previous_state = True
            #         state_out = data_class.siren_update()
            #         print(state_out)

            # # Stop Breaking
            # while(state_out == False and previous_state == True):
            #     print("UNBRAKE")
            #     #joy_state_out = unbrake(joy_state) 
                
            #     #joy_state = joy_state_out
                #previous_state = False
            
        
            print(siren_out, state_out)
            
            # lights_out = detectLights(getattr(data_class, 'red_counts'), getattr(data_class, 'blue_counts'))
            # setattr(data_class, "light_confidence", float(lights_out))
            # print(siren_out, lights_out)




def brake_thread(data_class, dummy):
    
    prev_state = False
    print("Starting Thread")
    brake_pub = rospy.Publisher('/pacmod/as_rx/brake_cmd', PacmodCmd, queue_size=1)
    joy_pub = rospy.Publisher('/game_control/joy', Joy, queue_size=1)
    while(True):
        time.sleep(0.1)
        flag = data_class.siren_update()
        print(flag)
  
        # Brake
        if(flag == True):
            print("Braking")
            brake_cmd = PacmodCmd()
            brake_cmd.enable = True
            brake_cmd.clear  = False
            brake_cmd.ignore = False
            brake_cmd.f64_cmd = 0.5
            brake_pub.publish(brake_cmd)
            prev_state = True

        # Unbrake
        if(flag == False and prev_state == True):
            print("UnBraking")
            brake_cmd = PacmodCmd()
            brake_cmd.enable = True
            brake_cmd.clear  = False
            brake_cmd.ignore = False
            brake_cmd.f64_cmd = 0.0
            brake_pub.publish(brake_cmd)
            prev_state = False

if __name__ == "__main__":

    rospy.init_node('gnss_pp_node_new', anonymous=True)

    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    data_class = Data()
    #cap = cv2.VideoCapture(0)  
    # cap = cv2.VideoCapture(2)                 # Gray Scale Feed on GEM
    cap = cv2.VideoCapture(4)                   # Color Feed on GEM
    #brake()
    mic_lock = threading.Lock()
    camera_lock = threading.Lock()

    t4 = threading.Thread(target=brake_thread, args=(data_class, 0))
    t1 = threading.Thread(target=mic_thread, args=(data_class, mic_lock))
    t2 = threading.Thread(target=camera_thread, args=(cap, data_class, camera_lock))
    t3 = threading.Thread(target=real_time, args=(data_class, mic_lock, camera_lock))

    # Start Threads
    t4.start() 
    t1.start()
    t2.start()
    t3.start()

    t2.join()
    
