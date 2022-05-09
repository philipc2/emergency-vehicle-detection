#!/usr/bin/env python
from imp import acquire_lock
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

def brake():
     
    brake_pub = rospy.Publisher('/pacmod/as_rx/brake_cmd', PacmodCmd, queue_size=1)
    brake_cmd = PacmodCmd()
    brake_cmd.enable = True
    brake_cmd.clear  = False
    brake_cmd.ignore = False
    brake_cmd.f64_cmd = 0.9
    brake_pub.publish(brake_cmd)


    return

def unbrake():
    # Set up Publishers
    #enable_pub = rospy.Publisher("/pacmod/as_tx/enable", Bool, queue_size=1)
    #joy_pub = rospy.Publisher('/game_control/joy', Joy, queue_size=1)
    brake_pub = rospy.Publisher('/pacmod/as_rx/brake_cmd', PacmodCmd, queue_size=1)

    
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


flag = False

def brake_thread():
    prev_state = False
    print("Starting Thread")
    brake_pub = rospy.Publisher('/pacmod/as_rx/brake_cmd', PacmodCmd, queue_size=1)
    while(True):
        if(flag == True):
            print("Braking")
            brake_cmd = PacmodCmd()
            brake_cmd.enable = True
            brake_cmd.clear  = False
            brake_cmd.ignore = False
            brake_cmd.f64_cmd = 0.5
            brake_pub.publish(brake_cmd)
            prev_state = True
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
    t1 = threading.Thread(target=brake_thread, args=())
    t1.start()
    for i in range(100000000):
        flag = False
    flag = False
    # while(1):
    #     print("braking\n")
    #     brake()
    # unbrake()