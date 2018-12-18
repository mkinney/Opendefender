hp = 1 viewon = 0 shootdelay = 0 movdelay = 0 act = 0
if global.wave = 1 {
dif = 1
movspeed = 1
movtime = 40
shootspeed = 3
}
if global.wave = 2 {
dif = 2
movspeed = 1
movtime = 40
shootspeed = 3
}
if global.wave = 3 {
dif = 3
movspeed = 1.5
movtime = 35
shootspeed = 3
}
if global.wave = 4 {
dif = 4
movspeed = 1.5
movtime = 35
shootspeed = 3
}
if global.wave = 5 {
dif = 5
movspeed = 2
movtime = 35
shootspeed = 3
}
if global.wave = 6 {
dif = 6
movspeed = 2
movtime = 35
shootspeed = 3
}
if global.wave = 7 {
dif = 7
movspeed = 2
movtime = 35
shootspeed = 3
}
if global.wave = 8 {
dif = 8
movspeed = 2
movtime = 35
shootspeed = 3
}
if global.wave = 9 {
dif = 9
movspeed = 2
movtime = 35
shootspeed = 3
}
if global.wave = 10 {
dif = 10
movspeed = 3
movtime = 30
shootspeed = 3
}
if global.wave >= 11 {
dif = 11
movspeed = 3
movtime = 30
shootspeed = 3.5
}
alarm[2] = 5+random(10)

