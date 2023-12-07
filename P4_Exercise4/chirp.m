% Spectrum Representation: Lab P-4: 3 Lab Exercise Chirps and Beats
% 
% 
% 4.3 Spectrogram of a Chirp: Use the mychirp function Use the mychirp 
% function (written during the Warm-up) to synthesize a chirp signal for 
% your lab report. Use the following parameters:
    % 1. A total time duration of 3 s, with a D/A conversion rate of fs D 11025 Hz.
    % 2. The instantaneous frequency starts at 5,000 Hz and ends at 300 Hz.

dur = 3; % duration of sound in seconds
fsamp = 11025; % sampling rate 
f1 = 5000; % starting frequency
f2 = 300; % final frequency

[xx, tt] = mychirp(f1,f2,dur,fsamp);
soundsc(xx,fsamp);

% Listen to the signal. What comments can you make regarding 
% the sound of the chirp (e.g., is the frequency movement linear)? 
    % When the sound is played, the chirp frequency is linear.
% Does it chirp down, or chirp up? 
    % The chirp first goes up and then goes down.
% Create a spectrogram of this chirp signal, and use it to verify 
% that you have the correct instantaneous frequencies.

% Generates spectrogram figure with correct instantaneous frequencies
figure 
specgram(xx,2048,fsamp); 
title('2048 points');