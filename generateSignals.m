function generatedSignals = generateSignals(signal, numberOfSignals)
   
%EEG data augmentation method, the function returns new EEG signals. 
%The function requires an input of a sample signal and the number of 
%newly generated signals. The diversity of the new signals is determined by parameters.

% signal is the input signal.
% numberOfSignals is the number of generated signals.

% sampleLength is the length of the signal sample.
% frequencySpectrum is the frequency spectrum of the signal.
% samplingRate is the sampling rate of the signal.
% timeInterval and timeVector are the time values used in generating signals.
% augmentedSignal is the generated signal after applying augmentation.
% amplitude is the amplitude used in generating the signal.
% noise is the noise added to the signal (currently set to zero).

    signal = signal - mean(signal);
    sampleLength = 256;

    frequencySpectrum = [];
    for i = 1:10:length(signal) - sampleLength;
        fftSignal = abs(fft(signal(i:i+sampleLength-1,1)));   
        fftSignal = fftSignal ./ 128;
        frequencySpectrum = [frequencySpectrum fftSignal(1:128)];
    end

    samplingRate = 256;
    timeInterval = 1 / samplingRate;
    timeVector = 0:timeInterval:sampleLength * timeInterval - timeInterval;

    for signalIndex = 1:numberOfSignals

        augmentedSignal = zeros(sampleLength,1);
        for frequencyIndex = 1:120;

            amplitude = frequencySpectrum(frequencyIndex, randi(size(frequencySpectrum, 2)));
            %Parameters can be modified to create diverse signals
            augmentedSignal = augmentedSignal + (1 + 0.2 * randn(1,1)) * amplitude * sin(2 * pi * (frequencyIndex - 1) * timeVector + 2 * pi * randn(1,1))';
        
        end

        %noise = randn(sampleLength, 1) * 0.0000000037;
        noise = 0; 
        augmentedSignal = noise + augmentedSignal;
        generatedSignals(:, signalIndex) = augmentedSignal;

    end
end
