/// @description lives and spawn

global.live += -1;

if (global.live > 0) {
	
	instance_destroy(object_humanoid);
	instance_destroy(object_humanoid_saved);
	
	for (var i = 1; i <= global.humanoidnumber; i++) {
		instance_create(152 * i, 230, object_humanoid);
	}
	
	dying = 0;
	hit = 0;
	dyingdelay = 0;
	see = 0;
	objectUI.scr = 100;
	objectUI.deathcheck = 0;
	objectUI.landercheck = 0;
	y = 118;

	with (landerspawner) {
		objectUI.landertime += 1
		instance_destroy();
	}
	with (mutantspawner) {
		instance_create(x, y, mutantspawner);
		instance_destroy();
	}
	with (bomberspawner) {
		instance_create(x, y, bomberspawner);
		instance_destroy();
	}
	with (podspawner) {
		instance_create(x, y, podspawner);
		instance_destroy();
	}
	with (swarmerspawner) {
		instance_create(x, y, swarmerspawner);
		instance_destroy();
	}
	with (baiterspawner) {
		instance_destroy();
	}
	with (enemy_lander) {
		objectUI.landertime += 1;
		instance_destroy();
	}
	with (enemy_mutant) {
		instance_create(x, y, mutantspawner);
		instance_destroy();
	}
	with (enemy_bomber) {
		instance_create(x, y, bomberspawner);
		instance_destroy();
	}
	with (enemy_pod) {
		instance_create(x, y, podspawner);
		instance_destroy();
	}
	with (enemy_swarmer) {
		instance_create(x, y, swarmerspawner);
		instance_destroy();
	}
	with (enemy_baiter) {
		instance_destroy();
	}
	with (enemy_baiter) {
		instance_destroy();
	}
	objectUI.baitersp = 0;
	objectUI.alarm[4] = 0;
	objectUI.alarm[0] = 30;
}
else {
	global.gamestart = 0;
	objectUI.alarm[10] = 180;
}