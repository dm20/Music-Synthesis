% Daniel McGrath
% Music Synthesis in MATLAB
% -------------------------
%    STARWARS Theme Song
% -------------------------

clear all;
clc;

quarter_note = 60/108;
whole_note = 4  * quarter_note;
half_note = 2 * quarter_note;
eigth_note = 0.5 * quarter_note;
sixteenth_note = 0.25 * quarter_note;
twelfth_note = quarter_note/3;

c1 = [note(22,eigth_note) note(-1,3*eigth_note)] + note(35,half_note) + note(30,half_note);

intro = [note(30,twelfth_note) note(30,twelfth_note) note(30,twelfth_note) c1 note(42,half_note) note(40,twelfth_note) note(39,twelfth_note) note(37,twelfth_note) note(47,half_note) note(42,quarter_note) note(40,twelfth_note) note(39,twelfth_note) note(37,twelfth_note) note(47,half_note) note(42,quarter_note) note(40,twelfth_note) note(39,twelfth_note) note(40,twelfth_note ) note(37,half_note) note(-1,sixteenth_note) note(30,quarter_note) note(30,eigth_note) c1 note(42,half_note) note(40,twelfth_note) note(39,twelfth_note) note(37,twelfth_note) note(47,half_note) note(42,quarter_note) note(40,twelfth_note) note(39,twelfth_note) note(37,twelfth_note) note(47,half_note) note(42,quarter_note) note(40,twelfth_note) note(39,twelfth_note) note(40,twelfth_note) note(37,half_note)]; 
 
mid = [note(-1,sixteenth_note) note(30,quarter_note) note(30,twelfth_note) note(32,quarter_note) note(-1,twelfth_note) note(32,twelfth_note*2) note(40,eigth_note) note(39,eigth_note) note(37,eigth_note)  note(35,eigth_note) note(35,twelfth_note) note(37,twelfth_note) note(39,twelfth_note) note(37,eigth_note) note(32,twelfth_note) note(34,eigth_note) note(30,eigth_note) note(30,twelfth_note) note(-1,sixteenth_note) note(32,quarter_note) note(32,eigth_note) note(40,eigth_note) note(39,eigth_note) note(37,eigth_note) note(35,eigth_note) note(42,eigth_note) note(37,twelfth_note) note(37,quarter_note) note(30,eigth_note) note(30,twelfth_note) note(32,quarter_note) note(32,eigth_note) note(40,eigth_note) note(39,eigth_note) note(37,eigth_note) note(35,eigth_note) note(35,twelfth_note) note(37,twelfth_note) note(39,twelfth_note) note(37,twelfth_note) note(32,eigth_note) note(34,eigth_note) note(42,eigth_note) note(-1, sixteenth_note) note(42,twelfth_note) note(47,eigth_note) note(45,twelfth_note) note(43,eigth_note) note(42,twelfth_note) note(40,eigth_note) note(38,twelfth_note) note(37,eigth_note) note(35,twelfth_note) note(42,half_note)]; 

outro = [note(30,twelfth_note) note(30,twelfth_note) note(30,twelfth_note) c1 note(42,half_note) note(40,twelfth_note) note(39,twelfth_note) note(37,twelfth_note) note(47,half_note) note(42,quarter_note) note(40,twelfth_note) note(39,twelfth_note) note(37,twelfth_note) note(47,half_note) note(42,quarter_note) note(40,twelfth_note) note(39,twelfth_note) note(40,twelfth_note ) note(37,half_note) note(30,quarter_note) note(30,eigth_note) c1 note(42,half_note) note(40,twelfth_note) note(39,twelfth_note) note(37,twelfth_note) note(47,half_note) note(42,quarter_note) note(47,twelfth_note) note(45,twelfth_note) note(43,twelfth_note) note(50,half_note) note(49,quarter_note) note(47,quarter_note) note(35,twelfth_note) note(35,twelfth_note) note(35,twelfth_note) note(35,quarter_note)];

song = [intro mid outro];

soundsc(song);

    
