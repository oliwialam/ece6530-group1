% Spectrum Representation: Lab P-4: 3 Lab Exercise Chirps and Beats
% 
% 
% 4.3 Spectrogram of a Chirp: Use the mychirp function Use the mychirp 
% function (written during the Warm-up) to synthesize a chirp signal for 
% your lab report. Use the following parameters:
    % 1. A total time duration of 3 s, with a D/A conversion rate of fs D 11025 Hz.
    % 2. The instantaneous frequency starts at 5,000 Hz and ends at 300 Hz.

function [xx,tt] = mychirp( f1, f2, dur, fsamp )
%MYCHIRP generate a linear-FM chirp signal
%
% usage: xx = mychirp( f1, f2, dur, fsamp )
%
% f1 = starting frequency
% f2 = ending frequency
% dur = total time duration
% fsamp = sampling frequency (OPTIONAL: default is 11025)
%
% xx = (vector of) samples of the chirp signal
% tt = vector of time instants for t=0 to t=dur
dt = 1/fsamp;
tt = 0:dt:dur;
u = (f2 - f1)/(dur*2);
% instantaneous frequency = fi
fi = 2*u*tt + f1;
% theta(t) = psi = integral(fi(t) dt)
psi = 2*pi*(2*u*tt.^2+2*f1*tt);
% Assume A = 10
A = 10;
xx = real(A*exp(1i*psi));
end