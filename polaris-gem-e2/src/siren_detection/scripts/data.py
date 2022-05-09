from imp import acquire_lock
import cv2
import numpy as np
import matplotlib.pyplot as plt
import soundcard as sc                  # https://github.com/bastibe/SoundCard
import threading, queue
import time
import os

from pyAudioAnalysis import audioBasicIO
from pyAudioAnalysis import ShortTermFeatures
import noisereduce as nr
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






class Data():
    def __init__(self):
        # Microphone Data
        self.q_mic = queue.Queue()

        # Camera Data
        self.red_counts = []             
        self.blue_counts = []

        # Siren Status
        self.siren_confidence = 0
        self.siren_present_count = 0
        self.siren_absent_count = 0
        self.siren_state = False

        # Light Status
        self.light_confidence = 0
        self.light_counts = 0

        # Confidence Values
        self.wait_siren_start = 2
        self.wait_siren_end = 2


    def mic_insert(self, sample):
        self.q_mic.put(sample)

    def mic_get_sample(self):
        out = self.q_mic.get()
        return out
    
    
    def siren_update(self):
        if(self.siren_confidence > 0.3):
            self.siren_present_count += 1
        else:
            self.siren_absent_count += 1

        if(self.siren_present_count > self.wait_siren_start and self.siren_state == False):
            self.siren_state = True
            self.siren_absent_count = 0
        
        if(self.siren_absent_count > self.wait_siren_end and self.siren_state == True):
            self.siren_state = False
            self.siren_present_count = 0

        return self.siren_state

        
    def camera_insert(self, frame):
        hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

        lower_red = np.array([0,100,100])
        upper_red = np.array([10,255,255])
        lower_blue = np.array([110,50,50])
        upper_blue = np.array([130,255,255])
        
        # Color Masking
        mask_red = cv2.inRange(hsv, lower_red, upper_red)
        res_red = cv2.bitwise_and(frame,frame, mask= mask_red)
        mask_blue = cv2.inRange(hsv, lower_blue, upper_blue)
        res_blue = cv2.bitwise_and(frame,frame, mask= mask_blue)

        # Color Counts
        self.red_counts.append(np.count_nonzero(res_red))
        self.blue_counts.append(np.count_nonzero(res_blue))

    