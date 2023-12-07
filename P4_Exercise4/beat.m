% Spectrum Representation: Lab P-4: 3 Lab Exercise Chirps and Beats
% 
% 
% 4.1 Beat Notes: The basic sinusoid can be used in communication systems such as radio and
% TV using frequency modulation (FM) and amplitude modulation (AM). These
% signals can also be used to mimic musical instruments
% two sinusoidal signals of slightly different frequencies. This section
% will compute samples of such a signal and listen to the result


% 4.1 a.)  Write an M-file called beat.m that implements (5) and has the following as its first lines:
    % function [xx, tt] = beat(A, B, fc, delf, fsamp, dur)
    %BEAT compute samples of the sum of two cosine waves
    % usage:
    % [xx, tt] = beat(A, B, fc, delf, fsamp, dur)
    %
    % A = amplitude of lower frequency cosine
    % B = amplitude of higher frequency cosine
    % fc = center frequency
    % delf = frequency difference
    % fsamp = sampling rate
    % dur = total time duration in seconds
    % xx = output vector of samples
    %--Second Output:
    % tt = time vector corresponding to xx
% Include a copy of your M-file in your lab report. You might want to call the syn_sin() function
% written in Lab 2 to do the calculation. The function should also generate its own time vector, because
% that vector can be used to define the horizontal axis when plotting

function [xx, tt] = beat(A, B, fc, delf, fsamp, dur)
%BEAT compute samples of the sum of two cosine waves
% usage:
% [xx, tt] = beat(A, B, fc, delf, fsamp, dur)
%
% A = amplitude of lower frequency cosine
% B = amplitude of higher frequency cosine
% fc = center frequency
% delf = frequency difference
% fsamp = sampling rate
% dur = total time duration in seconds
% xx = output vector of samples
% tt = time vector corresponding to xx

% Define the time vector
tt = 0:1/fsamp:dur-1/fsamp;

% Generate the two cosine waves
x1 = A*cos(2*pi*(fc-delf)*tt);
x2 = B*cos(2*pi*(fc+delf)*tt);

% Compute the sum of the two waves
xx = x1 + x2;

end

% 4.1 b.)  To assist you in your experiments with beat notes, a tool called beatcon has been created. 
% This user interface controller is able to call your function beat.m, if you check the box Use External beat() 
% in the lower left-hand corner of the GUI. Therefore, before you invoke beatcon you should be sure
% your M-file is free of errors. Also, make sure that your beat.m function
% is on the MATLAB path Test the M-file written in part (a) via beatcon by using the values A=10, B=10, 
% fc=1000, delf=10, fsamp=11025, and dur=1 s. Plot the first 0.2 seconds of the resulting signal. Describe the 
% waveform and explain its properties. Hand in a copy of your plot with measurements of the period of the
% "envelope" and period of the high frequency signal underneath the envelope.
    % This sinusoid has an envelope that is slowly varying. 
    % We can see that the envelope has a period of 0.1 seconds and the high
    % frequency signal has a period of 0.001 seconds. 
