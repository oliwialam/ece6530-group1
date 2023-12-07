%% 4.3: The Bell Sound 

% Case 1:
ff = [110 220];
Io = 10;
tau = 2;
dur = 6;
fsamp = 11025;
xx_1 = bell(ff, Io, tau, dur, fsamp);
% play sound
soundsc(xx_1);

% Case 2:
ff = [220 440];
Io = 5;
tau = 2;
dur = 6;
fsamp = 11025;
xx_2 = bell(ff, Io, tau, dur, fsamp);
%soundsc(xx_2);

% Case 3:
ff = [110 220];
Io = 10;
tau = 12;
dur = 3;
fsamp = 11025;
xx_3 = bell(ff, Io, tau, dur, fsamp);
%soundsc(xx_3);

% Case 4:
ff = [110 220];
Io = 10;
tau = 0.3;
dur = 3;
fsamp = 11025;
xx_4 = bell(ff, Io, tau, dur, fsamp);
%soundsc(xx_4);

% Case 5:
ff = [250 350];
Io = 5;
tau = 2;
dur = 5;
fsamp = 11025;
xx_5 = bell(ff, Io, tau, dur, fsamp);
%soundsc(xx_5);

% Case 6:
ff = [250 350];
Io = 3;
tau = 1;
dur = 5;
fsamp = 11025;
xx_6 = bell(ff, Io, tau, dur, fsamp);
%soundsc(xx_6);