%% 4.4: Comments about the bell 
% We can test different values for modulating frequency, the carrier
% frequency, the scale for modulation index evelope, and time constant to
% get a variety of bells. Waveforms with a smaller decay reate, tau, the
% waveform sounds like a sum of harmonically related sinusoids. With a
% faster decay rate, it makes a percussion sound.

% Longer decay times gives a more sustained bell sound. The carrier
% frequency determines the pitch of the bell. The modulating frequency adds
% a bit of variation to the pitch overtime, while the envelope shapes the
% profile of the bell to make it sound more natural. 

% "Best" parameters for a bell sound 
tau = 2;     % Time constant for the exponential decay
fc = 800;         % Carrier frequency in Hz
fm = 4;        % Modulation frequency in Hz
Io = 0.2;     % Modulation index
dur = 5;              % Duration of the bell sound in seconds
fsamp = 44100;      % Sampling frequency in Hz (standard audio sampling rate)

