if (dir == 0) {
	dx += 32;
}

if (dir == 1) {
	dx += -32;
}
x = objectUI.x + dx;

var inst;
inst = instance_place(x, y, shootables);
if (inst != noone) {
	if (inst.viewon == 1) {
		hit = 1;
		with (inst) {
			other.id.host = id;
		}
	}
}

var inst2;
inst2 = instance_place(x + room_width, y, shootables);
if (inst2 != noone) {
	if (inst2.viewon == 1) {
		hit = 1;
		with (inst2) {
			other.id.host = id;
		}
	}
}

var inst3;
inst3 = instance_place(x - room_width, y, shootables);
if (inst3 != noone) {
	if inst3.viewon = 1 {
		hit = 1;
		with (inst3) {
			other.id.host = id;
		}
	}
}

if (hit == 1) {
	instance_destroy();
	host.hp -= 1;
}

disap += 1;

for (var i = -1; i < 2; i++) {
	if ((x - room_width * i > __view_get(e__VW.XView, 0)) and 
		(x - room_width * i < __view_get(e__VW.XView, 0) + 480))
	{
		disap = 0;
	}
}

if (disap >= 1) {
	instance_destroy();
}

if (x > room_width) {
	x -= room_width;
}
if (x < 0) {
	x += room_width;
}

if (dir == 0) {
	image_xscale = 1;
}
if (dir == 1) {
	image_xscale = -1;
}