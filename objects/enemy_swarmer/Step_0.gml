viewon = 0;
if ((instance_exists(object0)) and 
	(object0.dying == 0)) {
	for (var i = -1; i < 2; i++) {
		if ((x - room_width * i > __view_get(e__VW.XView, 0) - sprite_width / 2) and 
			(x - room_width * i < __view_get(e__VW.XView, 0) + 480 + sprite_width / 2))
		{
			viewon = 1;
		}
	}

	target_x = object0.x;
	target_y = object0.y;

	if (object0.x < room_width / 2) {
		xx = (room_width) + object0.x;
		if (abs(x - xx) < abs(x - target_x)) {
			target_x = xx;
		}
	} else {
		xx = -((room_width) - object0.x);
		if (abs(x - xx) < abs(x - target_x)) {
			target_x = xx;
		}
	}

	a = point_direction(x, y, target_x, target_y);

	if (act == 1) {
		if (movdir == 0 ) {
			x += movspeed;
		}
		if (movdir == 1) {
			x -= movspeed;
		}
		if (viewon == 1) {
			if ((y <= target_y - 15) or (y >= target_y + 15)) {
				if (y > target_y) {
					vspeed -= 0.05;
				}
				if (y < target_y) {
					vspeed += 0.05;
				}
			} else {
				// TODO: This looks a bit weird... bug? Please review.
			}

			if ((movdir == 0) and (x < target_x)) {
				if (shootdelay == 0) {
					shootdelay = 1;
					alarm[0] = 40 - (dif * 2) + random(10);
				}
			}
			if ((movdir == 1) and (x > target_x)) {
				if (shootdelay == 0) {
					shootdelay = 1;
					alarm[0] = 40 - (dif * 2) + random(10);
				}
			}
		}
		if (viewon == 0) {
			if (vspeed >= 0) {
				vspeed += 0.05;
			}
			if (vspeed < 0) {
				vspeed -= 0.05;
			}
		}

		if ((x <= target_x - 200) or (x >= target_x + 200)) {
			if ((movdir == 0) and (x > target_x)) {
				if (turndelay == 0) {
					turndelay = 1;
					alarm[1] = 2+random(8);
				}
			}
			if ((movdir == 1) and (x < target_x)) {
				if (turndelay == 0) {
					turndelay = 1;
					alarm[1] = 2+random(8);
				}
			}
		}
	}
}

if (vspeed > maxvspeed) {
	vspeed = maxvspeed;
}
if (vspeed < -maxvspeed) {
	vspeed = -maxvspeed;
}