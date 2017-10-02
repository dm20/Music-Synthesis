% Daniel McGrath
% Music Synthesis in MATLAB

clear all;
clc;

quarter_note = 60/180;
whole_note = 4  * quarter_note;
half_note = 2 * quarter_note;
eigth_note = 0.5 * quarter_note;
sixteenth_note = 0.25 * quarter_note;
twelfth_note = quarter_note/3;

notes_low = [ note(2,quarter_note) note(1,quarter_note) note(-1,half_note) note(-1, quarter_note) note(-1, quarter_note) note(-1, half_note) note(-1, quarter_note) note(-1, quarter_note) note(-1, half_note) note(-1, quarter_note) note(1,whole_note*0.8) ];
notes = [ note(14,quarter_note) note(13,quarter_note) note(6,half_note) note(9, quarter_note) note(8, quarter_note) note(9, half_note) note(-1, quarter_note) note(8, quarter_note) note(8, half_note) note(9, quarter_note) note(13,whole_note*0.8) ];
notes_high = [ note(38,quarter_note) note(37,quarter_note) note(30,half_note) note(33, quarter_note) note(32, quarter_note) note(33, half_note) note(-1, quarter_note) note(32, quarter_note) note(32, half_note) note(33, quarter_note) note(37,whole_note*0.8) ];
notes_higher = [ note(50,quarter_note) note(49,quarter_note) note(42,half_note) note(45, quarter_note) note(44, quarter_note) note(45, half_note) note(-1, quarter_note) note(44, quarter_note) note(44, half_note) note(45, quarter_note) note(49,whole_note*0.8) ];
notes = notes_low + notes + notes_high; + notes_higher;

n = [notes notes notes notes notes notes notes notes notes notes notes notes];

% Play the song
soundsc(n);
