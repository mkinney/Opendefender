/// @description baiter spawning
if (global.gamestart == 1) {
	
	if (clear == 0) {
		
		if (baitersp == 5) {
			if instance_number(enemy_baiter) < 6 {
				sound_play(sound_baiterwarning);
				instance_create(x, y, baiterspawner);
			}
			alarm[4] = 150;
		}
		
		if (baitersp == 4) {
			if instance_number(enemy_baiter) < 6 {
				sound_play(sound_baiterwarning);
				instance_create(x, y, baiterspawner);
			} 
			baitersp = 5;
			alarm[4] = 180;
		}
		
		if (baitersp == 3) {
			if instance_number(enemy_baiter) < 6 {
				sound_play(sound_baiterwarning);
				instance_create(x, y, baiterspawner);
			} 
			baitersp = 4;
			alarm[4] = 210;
		}
		
		if (baitersp == 2) {
			sound_play(sound_baiterwarning);
			instance_create(x, y, baiterspawner);
			baitersp = 3;
			alarm[4] = 240;
		}
		
		if (baitersp == 1) {
			sound_play(sound_baiterwarning);
			instance_create(x, y, baiterspawner);
			baitersp = 2;
			alarm[4] = 360;
		}
		
		if (baitersp == 0) {
			baitersp = 1;
			if ((baittime * instance_number(enemyparent_mustkill)) < 3540) {
				alarm[4] = baittime * instance_number(enemyparent_mustkill);
			} else {
				alarm[4] = 3540;
			}
		}
	}
}