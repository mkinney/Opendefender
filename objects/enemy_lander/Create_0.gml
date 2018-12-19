infect = 0;
target = -1;
capact = 0;
capting = 0;
catchdelay = 0;
viewon = 0;
hp = 1;
shootdelay = 0;
predictshoot = 0;
noscore = 0;
godir = choose(0, 1)
flyheight = 128 - 20 + floor(random(40))
heightdelay = 0

if global.wave == 1 {
	catchspeed = 36;
	dif = 0;
	movspeed = 1;
	upspeed = 0.5;
	shootspeed = 1;
}
if global.wave == 2 {
	catchspeed = 32;
	dif = 1;
	movspeed = 1;
	upspeed = 0.5;
	shootspeed = 1;
}
if global.wave == 3 {
	catchspeed = 28;
	dif = 2;
	movspeed = 1;
	upspeed = 1;
	shootspeed = 1.5;
}
if global.wave == 4 {
	catchspeed = 24;
	dif = 3;
	movspeed = 1;
	upspeed = 1;
	shootspeed = 1.5;
}
if global.wave == 5 {
	catchspeed = 20;
	dif = 4;
	movspeed = 1.5;
	upspeed = 1;
	shootspeed = 2;
}
if global.wave == 6 {
	catchspeed = 16;
	dif = 5;
	movspeed = 1.5;
	upspeed = 1.5;
	shootspeed = 2;
}
if global.wave == 7 {
	catchspeed = 12;
	dif = 6;
	movspeed = 1.5;
	upspeed = 1.5;
	shootspeed = 2;
}
if global.wave == 8 {
	catchspeed = 8;
	dif = 7;
	movspeed = 2;
	upspeed = 2;
	shootspeed = 2;
}
if global.wave == 9 {
	catchspeed = 6;
	dif = 8;
	movspeed = 2;
	upspeed = 2;
	shootspeed = 2;
}
if global.wave == 10 {
	catchspeed = 4;
	dif = 9;
	movspeed = 2;
	upspeed = 2;
	shootspeed = 3;
}
if global.wave == 11 {
	catchspeed = 4;
	dif = 10;
	movspeed = 2.5;
	upspeed = 2;
	shootspeed = 3;
}
if global.wave == 12 {
	catchspeed = 4;
	dif = 11;
	movspeed = 2.5;
	upspeed = 2;
	shootspeed = 3;
}
if global.wave == 13 {
	catchspeed = 4;
	dif = 12;
	movspeed = 2.5;
	upspeed = 2;
	shootspeed = 3;
}
if global.wave == 14 {
	catchspeed = 4;
	dif = 13;
	movspeed = 2.5;
	upspeed = 2;
	shootspeed = 3;
}
if global.wave >= 15 {
	catchspeed = 4;
	dif = 13;
	movspeed = 2.5;
	upspeed = 2.5;
	shootspeed = 3;
}