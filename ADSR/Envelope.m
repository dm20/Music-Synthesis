% Daniel McGrath
% Music Synthesis in MATLAB
% Envelope function
%
% This function amplitude modulates an audio vector.

function[y] =  Envelope(x)
    s = size(x,2);                 % size of audio vector
    A = linspace(0,1,s*0.1);
    D = linspace(1,0.9,s*0.2);
    S = linspace(0.9,0.7,s*0.5);
    R = linspace(0.7,0,s*0.2);     % four scaling vectors the break up the audio vector    
    
    k = [A D S R];                 % concatanate the scaling vectors
    s2 = size(k,2);
    d =  s2 - s;
    if (d > 0) 
        for i = 1 : d 
            x = [x 0];
        end
    elseif (d < 0) 
        for i = 1 : abs(d)         % in some cases the audio vector and group of scaling vectors are of different length, in which case 0 padding is used
            k = [k 0];
        end
    end
    
    y = k.*x;                      % amplitude modulate the audio vector using the concatanation of scaling vectors
end
