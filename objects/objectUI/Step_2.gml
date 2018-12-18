if ((instance_exists(object0)) and (object0.dying == 0)) {
	x = object0.x + scr;
	y = object0.y;
}

__view_set(e__VW.XView, 0, x - 240);
__view_set(e__VW.YView, 0, y - 135);
__view_set(e__VW.YView, 0, clamp(__view_get(e__VW.YView, 0), 0, room_height - __view_get(e__VW.HView, 0)));
//This makes the view to move beyond the room's space.

if ((landertime <= 0) and 
	(landernum <= 0) and 
	(instance_number(enemyparent_mustkill) == 0) and 
	(instance_number(spawnerparent) == 0) and 
	(instance_number(object_giantexp) == 0))
{
	if (bonusdelay == 0) {
		bonusdelay = 1;
		alarm[2] = 10;
	}
} else {
	bonusdelay = 0;
	alarm[2] = 0;
}