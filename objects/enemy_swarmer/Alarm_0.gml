if viewon = 1 and instance_exists(object0) {
shootdir = a+5-floor(random(10))
if movdir = 0 and x < target_x {if shootdir > 28 and shootdir <= 90 shootdir = 28 if shootdir < (360-28) and shootdir >= 270 shootdir = (360-28)
if x < target_x-20 {
var frr = instance_create(x,y,object_enemybullet)
with(frr) {motion_add(other.id.shootdir,other.id.shootspeed)}
sound_stop(sound_enemyshoot2) sound_play(sound_enemyshoot2)
}}
if movdir = 1 and x > target_x {if shootdir < (180-28) and shootdir > 90 shootdir = (180-28) if shootdir > (180+28) and shootdir < 270 shootdir = (180+28) 
if x > target_x+20 {
var frr = instance_create(x,y,object_enemybullet)
with(frr) {motion_add(other.id.shootdir,other.id.shootspeed)}
sound_stop(sound_enemyshoot2) sound_play(sound_enemyshoot2)
}}
}
shootdelay = 0

