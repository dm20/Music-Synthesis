% Daniel McGrath
% Lab 3 - Music Synthesis in MATLAB
% Part C
%
% This function plays a scale by repeatedly calling the note
% function.

function scale()
      scale = [40 42 44 45 47 49 51 52];  % the scale keynums
      notes = [];          % empty notes vector to be passed to soundsc()
      for keynum = scale   % iterate through each element in the scale 
          notes = [notes note(keynum,1)]; % populate the notes vector
      end
      soundsc(notes)       % play the scale at the sampling rate
end
