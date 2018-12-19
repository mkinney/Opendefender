viewon = 0;
if ((instance_exists(object0)) and (object0.dying == 0)) {
	for (var i =- 1; i < 2; i++) {
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
}