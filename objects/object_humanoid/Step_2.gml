if hp = 0 {
global.humanoidnumber += -1
instance_create(x,y,object_humanoiddead)
sound_stop(sound_humanoiddead) sound_play(sound_humanoiddead)
instance_destroy();
}

if capture = 1 and instance_exists(host) {
x = host.x+1
y = host.y+14
}

if x>room_width
x-=room_width
if x<0
x+=room_width

if see = 0 image_xscale = 1
if see = 1 image_xscale = -1

