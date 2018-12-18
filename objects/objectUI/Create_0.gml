if (global.spacebattle == 0) {
	__background_set(e__BG.Index, 0, background0);
} 
else {
	__background_set(e__BG.Index, 0, background1);
}

instance_create(-100, 118, object0);

if (global.wave == 1) {
	sound_play(sound_start);
	for (var i = 1; i <= global.humanoidnumber; i++) {
		instance_create(152 * i, 230, object_humanoid);
	}
	alarm[0] = 30;
} else {
	alarm[10] = 180;
}

landercheck = 0;

if (global.wave == 1) {
	landernum = 15;
} else {
	landernum = 20;
}

landertime = landernum;
mutantspawnnum = -1;
nomorespawn = 0;
bonusdelay = 0;
clear = 0;
baitersp = 0;

if (global.wave == 1) {
	baittime = 180;
} else {
	baittime = 120;
}

smartbomb = 0;
imagenum = 0;
scr = 100;
scoreshow = 0;
deathcheck = 0;

alarm[11] = 4;