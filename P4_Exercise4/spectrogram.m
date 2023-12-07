% Spectrum Representation: Lab P-4: 3 Lab Exercise Chirps and Beats
% 
% 
% 4.2 More on Spectrograms: A beat note signal may be viewed as two signals 
% with different constant frequencies, or as a singlefrequency signal whose
% amplitude varies with time. Both views will be useful in evaluating the 
% effect of window length when finding the spectrogram of a beat signal.


% 4.2 a.) Here we are creating a beat signal with the following parameters:

% (i) frequency difference delf = 32 Hz
% (ii) Total time duration in seconds dur = 0:26 s
% (iii) sampling frequency fsamp = 11025 Hz
% (iv) center frequency fc = 2000 Hz


delf = 32;
dur = 0.26;
fsamp = 11025;
fc = 2000;
A = 10;
B = 10;

[x,t]=beat(A,B,fc,delf,fsamp,dur);
figure
plot(t,x);
xlabel('t(seconds)');
ylabel('x(t)');

% 4.2 b.) A spectrogram using a window length of 2048 
figure 
specgram(x,2048,fsamp); 
colormap(1-gray(256));
title('2048 points');

% Comment on what you see. Are the correct frequencies 
% present in the spectrogram? If necessary, use the zoom 
% tool to examine the important region of the spectrogram.
    % With a window length of 2048, there is a detailed view 
    % of the beat's frequency components. The correct frequencies are
    % present!

% 4.2 c.) A spectrogram using a window length of 2048     
figure 
specgram(x,16,fsamp);
colormap(1-gray(256));
title('16 points');

% Comment on what you see, and compare to the previous spectrogram
    % Compared to a window length of 2048, a window length of 16 does 
    % not show details about the features of the signal. It is less
    % accurate. Short windows are good for capturing sudden changes in
    % frequency, but not resolution.


