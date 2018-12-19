if (hp <= 0) {
	if (catchdelay == 2) {
		objectUI.landercheck += -1;
	}
	if (noscore < 2) {
		objectUI.landernum += -1;
	}
	if (instance_exists(target)) {
		target.stop = 0;
	}
	sound_stop(sound_enemydead);
	sound_play(sound_enemydead);
	instance_destroy();
	if (noscore == 0) {
		instance_create(x, y, object_explode);
		global.playerscore += 150;
	}
}

if (x > room_width) {
	x -= room_width;
}
if (x < 0) {
	x += room_width;
}