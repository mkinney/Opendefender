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
//object targeting in seamlessly wrapped room. If you don't use it enemies will act strangely when you are moving around the room's edges.

if catchdelay < 2 {
if catchdelay = 0 and objectUI.landercheck < 3 {catchdelay = 1 alarm[1] = catchspeed*instance_number(object_humanoid)+(30*(choose(2,4,6)))}
}
if catchdelay = 2 {
if instance_exists(object_humanoid) {
if instance_nearest(x,y,object_humanoid).x > x-4 and instance_nearest(x,y,object_humanoid).x < x+4 and instance_nearest(x,y,object_humanoid).stop = 0
{target = instance_nearest(x,y,object_humanoid).id capting = 1 target.stop = 1 shootdelay = 0 alarm[0] = 0}}
else {
objectUI.landercheck += -1 infect = 0 target = -1 capact = 0 capting = 0 catchdelay = 0
}
}
if capting = 0 {
if godir = 0 x += +movspeed
if godir = 1 x += -movspeed
if y < flyheight y += +1
if y > flyheight y += -1
if heightdelay = 0 {heightdelay = 1 alarm[2] = 60*choose(2,4,5,6,7,8)}
}
if capting = 1 {
if instance_exists(target) {
if y >= 216 and target.capture = 0 and target.saved = 0 {
capact = 1 sound_stop(sound_warning) sound_play(sound_warning) with(target) {capture = 1 host = other.id}
}
if capact = 0 {if target.capture = 0 and target.saved = 0 {y += +1} else {objectUI.landercheck += -1 infect = 0 target = -1 capact = 0 capting = 0 catchdelay = 0}}
if capact = 1 {if y > 14 y += -upspeed else {if infect = 0 {sound_stop(sound_explode) sound_play(sound_explode)}
instance_create(x,y,enemy_mutant) instance_create(target.x,target.y,object_humanoiddead) instance_destroy(target) global.humanoidnumber += -1 noscore = 1 hp = 0
}
}
}
else {if y > 14 y += -upspeed else {objectUI.landercheck += -1 infect = 0 target = -1 capact = 0 capting = 0 catchdelay = 0}}
}
}
if viewon = 1 {
if shootdelay = 0 {shootdelay = 1
if capting = 0
alarm[0] = 100-(dif*2)-9+random(15)
else {
if capact = 0
alarm[0] = 50-(dif*3)+random(4)
if capact = 1
alarm[0] = 120-(dif*3)-30+random(60)
}
}
}
if viewon = 0 {shootdelay = 0 alarm[0] = 0}
//landers are the most important enemy of defender, so they have the most complicated AI. you don't have to see it unless you want to make a defender clone.

