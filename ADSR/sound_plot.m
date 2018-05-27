% for plotting ADSR modulated tones
% when a note is instantiated it is automatically ADSR modulated

figure();

x = note(44,1);
t = 0 : 1/8192 : 1; % sampling rates are usually around 8 kHz

subplot(2,1,1)
plot(t,x);
title('ADSR Profile E(t)');
xlim([0 1]);

subplot(2,1,2)
plot(t,Envelope(Envelope(x)));
title('ADSR Profile E(t)^{2}');
xlim([0 1]);
