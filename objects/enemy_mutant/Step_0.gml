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

if viewon = 1 {
if x > target_x-15 and x < target_x+15 {
if y > target_y y -= movspeed-1.5
if y < target_y y += movspeed-1.5
}
else {
if x > target_x x -= movspeed
if x < target_x x += movspeed
}
if shootdelay = 0 {shootdelay = 1 alarm[0] = 45-(dif*2)+random(15)}
}
if viewon = 0 {
if x > target_x x -= movspeed
if x < target_x x += movspeed
}
if y > target_y-14 and y < target_y+14 {
if y <= target_y
y += choose(1,-1,-2,2,-3)
if y > target_y
y += choose(1,-1,-2,2,3)
}
else {
if y >= target_y
y += choose(1,-1,-2,2,-3)
if y < target_y
y += choose(1,-1,-2,2,3)
}
}

