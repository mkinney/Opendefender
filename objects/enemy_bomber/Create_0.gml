hp = 1;
viewon = 0;
shootdelay = 0;
movdir = choose(0, 1);
vspeed = choose(1,2, -1, -2);

if (global.wave == 2) {
	movspeed = 1;
	maxvspeed = 1;
}
if (global.wave == 3) {
	movspeed = 1;
	maxvspeed = 1;
}
if (global.wave == 4) {
	movspeed = 1;
	maxvspeed = 1;
}
if (global.wave >= 5) {
	movspeed = 1.5;
	maxvspeed = 1.5;
}