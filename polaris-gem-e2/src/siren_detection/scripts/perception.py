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

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

class Net(nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        self.hidden1 = nn.Linear(34, 64)
        self.hidden2 = nn.Linear(64, 128)
        self.hidden3 = nn.Linear(128, 256)
        self.hidden4 = nn.Linear(256, 1)

    def forward(self, x):
        x = F.relu(x)
        x = self.hidden1(x)
        x = F.relu(x)
        x = self.hidden2(x)
        x = F.relu(x)
        x = self.hidden3(x)
        x = self.hidden4(x)
        return x

samplerate = 48000
net = Net()
sigmoid = nn.Sigmoid()
softmax = nn.Softmax()
net.load_state_dict(torch.load("siren_detection_1", map_location=torch.device('cpu')))  
net = net.eval()




def detectSiren(sample):
    
    #print(sample.shape, end='\r')
    y = sample[:, 0]
    
    x = y.flatten()
    #x = nr.reduce_noise(y=y.flatten() , sr=samplerate)
    F, f_names = ShortTermFeatures.feature_extraction(x, samplerate, 
                                0.01*samplerate, 0.005*samplerate, deltas=False)
    # Run Siren Model
    F_test = torch.FloatTensor(F).to("cpu")
    test_out = net(F_test.T)
    F_test = torch.FloatTensor(F).to("cpu")
    test_out = net(F_test.T)
    out = sigmoid(test_out)

    upper_thresh = 0.8
    lower_thresh = 0.2

    siren_count = torch.count_nonzero(out > upper_thresh)
    non_siren_count = torch.count_nonzero(out < lower_thresh)

    confidence = (siren_count) / (non_siren_count + siren_count)

    return confidence


def detectLights(red_counts, blue_counts):
        #clean = signal.savgol_filter(blue_counts - red_counts, 11, 5)
        red_counts = np.array(red_counts)
        blue_counts = np.array(blue_counts)
        clean = blue_counts - red_counts

        # FFT to extract blinking frequency
        N = np.shape(clean)[0]
        T = 1.0 / 30.0
        x = np.linspace(0.0, N*T, N)
        cleanf = scipy.fftpack.fft(clean)
        xf = np.linspace(0.0, 1.0/(2.0*T), N//2)
        y = 2.0/N * np.abs(cleanf[:N//2])

        peaks, _ = find_peaks(y, height=max(y)-1)

        try:
            light_freq = xf[peaks[0]]
        except:
            return 0

        return light_freq











