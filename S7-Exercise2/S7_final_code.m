%% Spectograms of AM and FM Signals: Lab S-7: 2.1 Lab Exercise

%2.1.2a)
%create and plot a beat signal defined in the lab with duration of 5secs,
%sampling rate = 8000 samples/s, and fDelta = 4 Hz. Phases can be random. 
clear;

amp = 10; %amplitude
fc = 1024; %center frequency 
phic = 2*pi*rand; %phase of 2nd sinusoid (random)
fDelta = 4; %modulation frequency 
phiDelta = 2*pi*rand; %phase of 2nd sinusoid (random) 
tStart = 0; %starting time (secs)
tStop = 5; %ending time (secds)
fSamp = 8000;

tt = tStart:(1/fSamp):tStop; %vector of times
xx = amp *cos(2*pi*fc*tt+phic).*cos(2*pi*fDelta*tt+phiDelta);
soundsc( xx, fSamp);

%Plot the beat signal with duration of 5s, sample rate of fs=8000 samples/s
figure (1);
plot(tt,xx);
colorbar;
grid on;
title('Beat Signal', 'FontSize', 50);
xlabel('Time (s)', 'FontSize', 25);
ylabel('Amplitude', 'FontSize', 25);
set(gca,'FontSize',20)


%2.1.2b)  
%When fDelta = 4, determine the two locations of the spectrum lines 
%that you expect to see in the spectrogram.
f1 = fc - fDelta;
f2 = fc + fDelta;
%Matlab shows these two answers as f1 = 1020 and f2= 1024, meaning there
%should be 2 spectrum lines at 1020 Hz and 1024 Hz. 

%2.1c)
%make a spectogram of b(t) using Lsect = 256. Comment on what you see. 
Lsect = 256; %changed from 8000

%plot spectogram
figure (2);
plotspec(xx, fSamp, Lsect);
title ('Beat Note', 'FontSize', 50);
xlabel ('xx', 'FontSize', 25);
ylabel ('Frequency', 'FontSize', 25);
set(gca,'FontSize',20)
colorbar
grid on
zoom on %with neg. freq. 

%2.1.2d)
%Find Lsect value that will show by doubling the section length (e.g. 512,
%1024, 2048, and so on)

Lsect2 = 3800; %from Tsect value shown in line below
Tsect = Lsect2/fSamp

%plot spectogram
figure (3);
plotspec(xx, fSamp, Lsect2);
colorbar
grid on
zoom on %with neg. freq. 
title ('Beat Note', 'FontSize', 50);
xlabel ('xx', 'FontSize', 25);
ylabel ('Frequency (Hz)', 'FontSize', 25);
set(gca,'FontSize',20)

%%2.1.3a
%Determine C
C = Tsect * abs(f1 -f2); %C = 3.84

%2.1.3b
%change fDelta to 16Hz and repeat 2.1.2(d) (find a section length that will
%resolve the two frequency components whihc are further apart now).

fdelta = 16; %Hz
fc2 = 1024; %Hz

f11 = fc2 - fdelta; %Hz
f22 = fc2 + fdelta; %Hz

tsect = C / abs(f11 - f22); %tsect = 0.12 s
lsect = tsect * fSamp; %lsect3 = 960

%Note: The relationship is approximate, so the derived section length is
%not guaranteed to work. If that happens, a small increase in LSECT should 
%make it work

Lsect3 = 1000;

%plot spectrogram
figure (4);
plotspec(xx, fSamp, Lsect3);
colorbar
grid on
zoom on %with neg. freq. 
title ('Beat Note', 'FontSize', 50);
xlabel ('xx', 'FontSize', 25);
ylabel ('Frequency (Hz)', 'FontSize', 25);
set(gca,'FontSize',20)
