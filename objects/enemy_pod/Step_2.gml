if (hp <= 0) {
	instance_create(x, y, object_explode)
	if (hp > -2) {
		repeat spnumber {
			var tin = instance_create(x, y, enemy_swarmer)
			with (tin) {
				motion_add(choose(90 - 80 + floor(random(160)), 270 - 80 + floor(random(160))), choose(1, 1.5, 2));
			}
		}
	}
	sound_stop(sound_enemydead);
	sound_play(sound_enemydead);
	instance_destroy();
	global.playerscore += 1000;
}

if (x > room_width) {
	x -= room_width;
}
if (x < 0) {
	x += room_width;
}
if (y < 10) {
	y = 192;
}
if (y > 192) {
	y = 10;
}