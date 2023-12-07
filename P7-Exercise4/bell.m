%% 4.2: Parameters for the Bell
function xx = bell(ff, Io, tau, dur, fsamp)
%BELL produce a bell sound
% 
%   usage:  xx = bell(ff, Io, tau, dur, fsamp)
%   where:  ff = frequency vector (containing fc and fm)
%           Io = scale factor for modulation index
%           tau = decay parameter for A(t) and I(t)
%           dur = duration (in sec.) of the output signal
%           fsamp = sampling rate
    
    % Carrier Frequency
    fc = ff(1);
    fm = ff(2);

    % Decaying exponential
    envelope = bellenv(tau, dur, fsamp);
    
    % Modulation signal 
    mod_signal = Io * sin(2* pi * fm * (0:1/fsamp:dur));

    % Bell sound 
    xx = envelope .* sin(2*pi*fc*(0:1/fsamp:dur) + mod_signal);

    % Plot the signal 
    figure;
    fontsize(30,"points");
    %subplot(4,1,1);
    plot((0:1/fsamp:dur), xx);
    title('Signal');
    xlabel('Time (s)');
    ylabel('Amplitude');

    % Plot the envelope
    figure;
    fontsize(30,"points");
    %subplot(4,1,2);
    plot((0:1/fsamp:dur), envelope);
    title('Envelope A(t)');
    xlabel('Time (s)');
    ylabel('Amplitude');

    % Plot sampled signal
    figure;
    fontsize(30,"points");
    %subplot(4,1,3);
    mid = max(size(xx))/2;
    t = (0:1/fsamp:dur);
    plot(t(mid-100:mid+100), xx(mid-100:mid+100));
    title('Sampled Signal: Middle of Signal');
    xlabel('Time (s)');
    ylabel('Amplitude');

    % Spectogram
    figure;
    fontsize(30,"points");
    %subplot(4,1,4);
    window_size = 512;
    overlap = 400;
    spectrogram(xx, window_size, overlap, window_size, fsamp, 'yaxis');
    title('Spectrogram');
    xlabel('Time (s)');
    ylabel('Frequency (Hz)');

    % Calculate fundamental frequency from spectrogram
    figure;
    fontsize(30,"points")
    [S, F, T, P] = spectrogram(xx, window_size, overlap, window_size, fsamp);
    [~, idx] = max(P);
    f0 = F(idx);
    plot(T, f0, 'b', 'LineWidth', 2);
    title('Fundamental Frequency (f0) over Time');
    xlabel('Time (s)');
    ylabel('Frequency (Hz)');
    grid on;

    fprintf('Spectrogram Fundamental Frequency (f0): %.2f Hz\n', mean(f0));

    % Calculate fundamental frequency
    n1 = fc/fm;
    fundamentalFrequency = fc/n1;
    fprintf('Fundamental Frequency: %.2f Hz\n', fundamentalFrequency);

    % Plot I(t) - Amplitude Modulation
    % t = 0:1/fsamp:dur;
    % figure;
    % subplot(2,1,1);
    % plot(t, envelope);
    % title('Instantaneous Amplitude Modulation (I(t))');
    % xlabel('Time (s)');
    % ylabel('Amplitude');

    % Plot fi(t) - Frequency Modulation
    % subplot(2,1,2);
    % plot(t, Io * envelope .* sin(2 * pi * fm * t));
    % title('Instantaneous Frequency Modulation (fi(t))');
    % xlabel('Time (s)');
    % ylabel('Frequency Modulation');

end