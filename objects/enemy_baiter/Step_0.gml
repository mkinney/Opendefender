viewon = 0
if instance_exists(object0) and object0.dying = 0 {
for(var i=-1;i<2;i++) {
if x-room_width*i > __view_get( e__VW.XView, 0 )-sprite_width/2 and x-room_width*i < __view_get( e__VW.XView, 0 )+480+sprite_width/2
{viewon = 1}
}

target_x = object0.x;
target_y = object0.y;

if( object0.x < room_width / 2){
xx = (room_width) + object0.x;
if( abs(x - xx) < abs(x - target_x) ){
target_x = xx;
}
}else{
xx = -((room_width) - object0.x);
if( abs(x - xx) < abs(x - target_x) ){
target_x = xx;
}
}

a = point_direction(x,y, target_x, target_y);


if act = 0 and speed = 0 {motion_add(floor(random(360)),choose(1,2,3))}
if act = 1 {
if movdelay = 0 {movdelay = 1 speed = 0
if viewon = 1 {
if x <= target_x motion_add(0,movspeed+object0.hspeed) if x > target_x motion_add(180,movspeed+(object0.hspeed*-1))
}
if viewon = 0 {
if x <= target_x {if object0.hspeed >= 0 motion_add(0,movspeed+object0.hspeed) if object0.hspeed < 0 motion_add(0,movspeed+(object0.hspeed*-1))}
if x > target_x {if object0.hspeed >= 0 motion_add(180,movspeed+object0.hspeed) if object0.hspeed < 0 motion_add(180,movspeed+(object0.hspeed*-1))}
}
if y <= target_y motion_add(270,choose(0.5,1,1.5)) if y > target_y motion_add(90,choose(0.5,1,1.5))
alarm[0] = movtime+random(10)}

if viewon = 1 {
if shootdelay = 0 {shootdelay = 1 alarm[1] = 63-(dif*3)}
}
if viewon = 0 {
shootdelay = 0 alarm[1] = 0
}
}
}
else {shootdelay = 0 alarm[1] = 0}

