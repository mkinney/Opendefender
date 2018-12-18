viewon = 0
for(var i=-1;i<2;i++) {
if x-room_width*i > __view_get( e__VW.XView, 0 )-sprite_width/2 and x-room_width*i < __view_get( e__VW.XView, 0 )+960+sprite_width/2
{viewon = 1}
}

if capture = 1 {
if !instance_exists(host) {host = -1 capture = 0 stop = 0 saved = 1}
}
if capture = 0 {
if saved = 0 {
if instance_exists(object0) and object0.dying = 0 and walkdelay = 0 and stop = 0 {walkdelay = 1 alarm[0] = 10+random(40)}
if stop = 1 or object0.dying > 0 {walkdelay = 0 alarm[0] = 0}
}
if saved = 1 {
if y < 170 and falldeath = 0 {if instance_exists(object0) and object0.dying = 0 {falldeath = 1}}
if y >= 230 {
if falldeath = 1 {
global.humanoidnumber += -1
instance_create(x,y,object_humanoiddead)
sound_stop(sound_humanoiddead) sound_play(sound_humanoiddead)
instance_destroy();
}
else {saved = 0 y = 230
var sab = instance_create(x,y-50,object_lowerbonus)
with(sab) {if instance_exists(object0) {motion_add(0,object0.hspeed)}}
sound_stop(sound_bonus) sound_play(sound_bonus)
}
}
else {
if instance_exists(object0) and object0.dying = 0
vspeed += fallspeed
if instance_place(x,y,object0) or instance_place(x-room_width,y,object0) or instance_place(x+room_width,y,object0) {object0.savenum += 1

var sab = instance_create(object0.x,object0.y-30,object_savebonus)
with(sab) {motion_add(0,object0.hspeed)}
sound_stop(sound_bonus) sound_play(sound_bonus)
var sa = instance_create(x,y,object_humanoid_saved) with(sa) {capposition = object0.savenum} instance_destroy();}
}
}
}
if saved = 1
if vspeed > 8 vspeed = 8
if saved = 0
vspeed = 0

