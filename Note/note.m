% Daniel McGrath
% Lab 3 - Music Synthesis in MATLAB
% Part B
%
% This function returns an audio vector specified by a key number on the
% piano keyspace for a specified duration.
%
% The function calls the Envelope function after the audio vector is
% generated.

function tone = note(keynum,dur)
    sampling_rate = 8192;              %sampling rate (see note at bottom)
    t = 0 : 1/sampling_rate : dur;   %time vector for note duration 
    
    if keynum == -1
        tone = zeros(size(t));%the function accepts a key number 
        return;               %equal to -1 in the event that a pause or rest needs to be generated
    end
    
    f = 440*(2^((keynum - 49)/12)); %equation for frequency based on keynum
    tone = sin(2*pi*t*f); %the audio tone, which may be passed to soundsc()
    tone = Envelope(tone);
end

% Sampling frequency chosen based on the maximum frequency shown in the 
% piano key chart of 4.186 kHz and the minimum frequency is 27 Hz, 
% resulting in B = 4159 --> Fs = 8318.

% The default sampling rate of soundsc() is 8192, so this sampling rate was
% used to avoid the need to include the sampling rate in each call to
% soundsc()

