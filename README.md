# CNN and EEG Dataset Augmentation

This repository contains the CNN solution and dataset augmentation of SSVEP EEG signals.
The details of the mathematical solution and the structure of the CNN are described in a publication:

Kołodziej, Marcin, Andrzej Majkowski, Remigiusz J. Rak, and Przemysław Wiszniewski. 2023. "Convolutional Neural Network-Based Classification of Steady-State Visually Evoked Potentials with Limited Training Data" Applied Sciences 13, no. 24: 13350. https://doi.org/10.3390/app132413350

## Data

The description of the recorded data can be found in the file Dataset.pdf.

## Code

In the file CNN_and_augmentation.m, you will find the main program in which test examples are loaded. Then, EEG data are generated using the proposed augmentation method. Subsequently, the CNN network is trained. At the end, the network is tested with test data. The program loads data for selected users S01-S05.

The file generateSignals.m is a helper file and is used to ensure the correct functioning of the proposed augmentation method.

The code for this project is written in MATLAB and tested on the following setup:

- MATLAB Version: 9.13.0.2193358 (R2022b) Update 5
- Operating System: Microsoft Windows 10 Pro Version 10.0 (Build 19045)
- Java Version: Java 1.8.0_202-b08 with Oracle Corporation Java HotSpot(TM) 64-Bit Server VM mixed mode

### MATLAB Configuration

```
MATLAB                                                Version 9.13        (R2022b)
Audio Toolbox                                         Version 3.3         (R2022b)
Bioinformatics Toolbox                                Version 4.16.1      (R2022b)
Computer Vision Toolbox                               Version 10.3        (R2022b)
Curve Fitting Toolbox                                 Version 3.8         (R2022b)
DSP System Toolbox                                    Version 9.15        (R2022b)
Data Acquisition Toolbox                              Version 4.6         (R2022b)
Deep Learning HDL Toolbox                             Version 1.4         (R2022b)
Deep Learning Toolbox                                 Version 14.5        (R2022b)
Econometrics Toolbox                                  Version 6.1         (R2022b)
Financial Instruments Toolbox                         Version 3.5         (R2022b)
Financial Toolbox                                     Version 6.4         (R2022b)
GPU Coder                                             Version 2.4         (R2022b)
Global Optimization Toolbox                           Version 4.8         (R2022b)
Image Acquisition Toolbox                             Version 6.7         (R2022b)
Image Processing Toolbox                              Version 11.6        (R2022b)
MATLAB Coder                                          Version 5.5         (R2022b)
MATLAB Compiler                                       Version 8.5         (R2022b)
MATLAB Compiler SDK                                   Version 7.1         (R2022b)
Optimization Toolbox                                  Version 9.4         (R2022b)
Parallel Computing Toolbox                            Version 7.7         (R2022b)
Predictive Maintenance Toolbox                        Version 2.6         (R2022b)
Sensor Fusion and Tracking Toolbox                    Version 2.4         (R2022b)
Signal Processing Toolbox                             Version 9.1         (R2022b)
Statistics and Machine Learning Toolbox               Version 12.4        (R2022b)
System Identification Toolbox                         Version 10.0        (R2022b)
Wavelet Toolbox                                       Version 6.2         (R2022b)
```



