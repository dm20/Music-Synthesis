# Music-Synthesis
Piano simulator.

### Regarding notes...
Note vectors are left application specific and up to the programmer.

My own note implementation (shown here) takes in two parameters. The first is the key number on the piano and the second is the duration of the note in seconds. The keys are ordered from left to right such that middle C (C4) is key number 40 and E4 is key number 44 (if you count blacks). When generating notes, a sampling rate of 8 kHz is the typical standard. If you'd like to see how I implemented notes, email me!

Notes are amplitude modulated based on a typical ADSR profile. This softens the otherwise abrupt transitions between notes in a song.
