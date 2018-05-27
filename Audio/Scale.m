% Daniel McGrath
% Music Synthesis in MATLAB
% 
%
% This function plays a scale by creating a vector of notes and then playing the vector.

function scale()
      scale = [40 42 44 45 47 49 51 52];  % the scale keynums
      notes = [];          % empty notes vector to be passed to soundsc()
      for keynum = scale   % iterate through each element in the scale 
          notes = [notes note(keynum,1)]; % populate the notes vector
      end
      soundsc(notes)       % play the scale at the sampling rate
end
