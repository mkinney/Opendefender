if clear = 0 {clear = 1 instance_deactivate_all(1)}
sound_stop(sound_thurst)
if global.wave = 1
global.playerscore += 100*global.humanoidnumber
if global.wave = 2
global.playerscore += 200*global.humanoidnumber
if global.wave = 3
global.playerscore += 300*global.humanoidnumber
if global.wave = 4
global.playerscore += 400*global.humanoidnumber
if global.wave >= 5
global.playerscore += 500*global.humanoidnumber
alarm[3] = 180

