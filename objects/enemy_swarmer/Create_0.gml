act = 0;
hp = 1;
viewon = 0;
shootdelay = 0;
movdir = choose(0, 1);
turndelay = 0;
shootdir = 0;

if (global.wave == 2) {
	dif = 1;
	movspeed = 2;
	maxvspeed = 1;
	shootspeed = 3;
}
if (global.wave == 3) {
	dif = 2;
	movspeed = 2;
	maxvspeed = 1.5;
	shootspeed = 3;
}
if (global.wave == 4) {
	dif = 3;
	movspeed = 2;
	maxvspeed = 2;
	shootspeed = 3.5;
}
if (global.wave == 5) {
	dif = 4;
	movspeed = 2;
	maxvspeed = 2;
	shootspeed = 3.5;
}
if (global.wave == 6) {
	dif = 5;
	movspeed = 2;
	maxvspeed = 2;
	shootspeed = 4;
}
if (global.wave == 7) {
	dif = 6;
	movspeed = 2;
	maxvspeed = 2;
	shootspeed = 4;
}
if (global.wave == 8) {
	dif = 7;
	movspeed = 2;
	maxvspeed = 2;
	shootspeed = 4.5;
}
if (global.wave == 9) {
	dif = 8;
	movspeed = 2;
	maxvspeed = 2;
	shootspeed = 4.5;
}
if (global.wave == 10) {
	dif = 9;
	movspeed = 2;
	maxvspeed = 2;
	shootspeed = 4.5;
}
if (global.wave >= 11) {
	dif = 10;
	movspeed = 2;
	maxvspeed = 2;
	shootspeed = 5;
}

action_set_alarm(15 + random(20), 2);