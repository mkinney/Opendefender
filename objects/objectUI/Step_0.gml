if global.gamestart = 0 {
if keyboard_check_pressed(global.button) {
global.wave = 1
global.playerscore = 0
global.humanoidnumber = 10
global.live = 3
global.smartbomb = 3
global.spacebattle = 0
global.livebonus = 0
global.gamestart = 1
room_restart();
}
}

if instance_exists(object0) {
if object0.see = 0 and scr < 100
scr += 4
if object0.see = 1 and scr > -100
scr += -4
}

if global.humanoidnumber = 0 and global.spacebattle = 0 {
objectUI.landercheck = 0
instance_create(x,y,object_giantexp)
__background_set( e__BG.Index, 0, background1 )

instance_destroy(landerspawner)

with(mutantspawner) {
instance_create(x,y,mutantspawner)
instance_destroy();
}
with(bomberspawner) {
instance_create(x,y,bomberspawner)
instance_destroy();
}
with(podspawner) {
instance_create(x,y,podspawner)
instance_destroy();
}
with(swarmerspawner) {
instance_create(x,y,swarmerspawner)
instance_destroy();
}
with(baiterspawner) {
instance_destroy();
}

with(enemy_lander) {
instance_destroy();
}
with(enemy_mutant) {
instance_create(x,y,mutantspawner)
instance_destroy();
}
with(enemy_bomber) {
instance_create(x,y,bomberspawner)
instance_destroy();
}
with(enemy_pod) {
instance_create(x,y,podspawner)
instance_destroy();
}
with(enemy_swarmer) {
instance_create(x,y,swarmerspawner)
instance_destroy();
}
with(enemy_baiter) {
instance_destroy();
}
baitersp = 0 alarm[4] = 0 alarm[0] = 60

global.spacebattle = 1
}

if global.playerscore>=10000*(global.livebonus+1)
{global.livebonus +=1; global.live +=1 global.smartbomb +=1 sound_stop(sound_player1up) sound_play(sound_player1up)}


