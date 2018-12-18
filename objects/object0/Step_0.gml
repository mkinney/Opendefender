if dying = 0 {
if keyboard_check_pressed(global.button) {
if objectUI.smartbomb = 0 {
if see = 0 {
var las = instance_create(x-4,y,object_laser)
with(las) {dir = 0}
}
if see = 1 {
var las = instance_create(x+4,y,object_laser)
with(las) {dir = 1}
}
sound_stop(sound_laser) sound_play(sound_laser)
}
if objectUI.smartbomb = 1 {
if global.smartbomb > 0 {
global.smartbomb += -1
with(enemyparent) {if viewon = 1 hp = -3}
instance_create(x,y,object_flash)
sound_stop(sound_explode) sound_play(sound_explode)
}
else {
x = 0+floor(random(room_width))
y = 118-50+floor(random(100))
instance_create(x,y,object_flash)
sound_stop(sound_baiterwarning) sound_play(sound_baiterwarning)
}
}
}

if keyboard_check(global.leftkey) {
if movdir = 0
{movdir2 = 1 motion_add(180,0.3) see = 1 jet = 1}
}
if keyboard_check(global.rightkey) {
if movdir2 = 0
{movdir = 1 motion_add(0,0.3) see = 0 jet = 1}
}
if keyboard_check(global.upkey) {
if keyboard_check(global.downkey) = 0
heightmove = 1
}
if keyboard_check(global.downkey) {
if keyboard_check(global.upkey) = 0
heightmove = 2
}

if keyboard_check(global.leftkey) = 0
movdir2 = 0
if keyboard_check(global.rightkey) = 0
movdir = 0
if keyboard_check(global.leftkey) = 0 and keyboard_check(global.rightkey) = 0
jet = 0
if keyboard_check_released(global.upkey)
heightmove = 0
if keyboard_check_released(global.downkey)
heightmove = 0
}
if dying = 1 {
instance_destroy(object_enemybullet) speed = 0 with(shootables) {speed = 0} jet = 0 heightmove = 0 heightscale = 0 heightdelay = 0
if dyingdelay = 0 {dyingdelay = 1 sound_play(sound_playerdead) objectUI.deathcheck = 1 alarm[1] = 110}
}

if heightmove > 0 {
if heightdelay = 0 {heightdelay = 1 
if heightmove = 1 and heightscale > -3 heightscale += -1
if heightmove = 2 and heightscale < 3 heightscale += +1
alarm[0] = 2}
vspeed = heightscale
}
if heightmove = 0 {vspeed = 0 heightscale = 0}

if hspeed > 0.1 hspeed += -0.1
if hspeed < -0.1 hspeed += +0.1
if hspeed >= -0.1 and hspeed <= 0.1 hspeed = 0

if hspeed > maxspeed hspeed = maxspeed
if hspeed < -maxspeed hspeed = -maxspeed

if jet = 1 {if sound_isplaying(sound_thurst)=false sound_loop(sound_thurst)}
else sound_stop(sound_thurst)

//defender's movement

