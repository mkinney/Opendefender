/// @description lives
if (deathcheck == 1) {
	global.live += -1;
}

if (global.live > 0) {
	global.wave += 1
	if ((global.wave mod 5) == 0) {
		global.humanoidnumber = 10;
		global.spacebattle = 0;
	}
	room_restart();
}
else {
	clear = 0;
	global.gamestart = 0;
	alarm[10] = 180;
}