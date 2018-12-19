var inst;
inst = instance_place(x, y, object0);
if (inst != noone) {
	hit = 1;
	with (inst) {
		other.id.host = id;
	}
}

var inst2;
inst2 = instance_place(x+room_width, y, object0);
if (inst2 != noone) {
	hit = 1;
	with (inst2) {
		other.id.host = id;
	}
}
	
var inst3;
inst3 = instance_place(x-room_width, y, object0);
if (inst3 != noone) {
	hit = 1;
	with (inst3) {
		other.id.host = id;
	}
}

if (hit == 1) {
	instance_destroy();
	host.dying = 1;
}

if (x > room_width) {
	x -= room_width;
}
if (x < 0) {
	x += room_width;
}
disap += 1;

for (var i =- 1; i < 2; i++) {
	if ((x - room_width * i > __view_get(e__VW.XView, 0)) and 
		(x - room_width * i < __view_get(e__VW.XView, 0) + 480)) 
	{
		disap = 0;
	}
}

if (disap >= 1) {
	instance_destroy();
}

if (y < 0) {
	instance_destroy();
}
if (y > 236) {
	instance_destroy();
}