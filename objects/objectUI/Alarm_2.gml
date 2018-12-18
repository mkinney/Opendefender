/// @description playerscore
if (clear == 0) {
	clear = 1;
	instance_deactivate_all(1);
}

sound_stop(sound_thurst);

switch (global.wave) {
	case 1:
		global.playerscore += 100 * global.humanoidnumber;
		break;
	case 2:
		global.playerscore += 200 * global.humanoidnumber;
		break;
	case 3:
		global.playerscore += 300 * global.humanoidnumber;
		break;
	case 4:
		global.playerscore += 400 * global.humanoidnumber;
		break;
	default:
		global.playerscore += 500 * global.humanoidnumber;
}

alarm[3] = 180;