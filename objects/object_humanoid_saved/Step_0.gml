if (instance_exists(object0)) {
	if (y >= 230) {
		object0.savenum -= 1;
		var hum = instance_create(x,230,object_humanoid);
		with (hum) {
			see = other.id.see;
		}
		instance_destroy();
		sound_stop(sound_bonus);
		sound_play(sound_bonus);
		var sab = instance_create(object0.x, object0.y - 30, object_savebonus);
		with(sab) {
			motion_add(0, object0.hspeed);
		}
	}
}
else {
	var hum = instance_create(x, y, object_humanoid);
	with (hum) {
		see = other.id.see;
		saved = 1;
	}
	instance_destroy();
}

