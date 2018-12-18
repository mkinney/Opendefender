if viewon = 1 {
if capting = 0 {
if global.wave < 5
predictshoot = choose(0,1,2,3,4)
if global.wave > 5 and global.wave < 10
predictshoot = choose(0,1,2,3)
if global.wave > 10 and global.wave < 15
predictshoot = choose(0,1,2)
if global.wave >= 15
predictshoot = choose(0,1)
}
else {if capact = 0 predictshoot = 1
if capact = 1 predictshoot = 0}
if predictshoot = 0 {fr=point_distance(x,y,target_x,target_y)/(shootspeed-1);
if object0.vspeed >= 0 {
zx = target_x+lengthdir_x(abs(object0.vspeed)*fr,270);
zy = target_y+lengthdir_y(abs(object0.vspeed)*fr,270);
}
if object0.vspeed < 0 {
zx = target_x+lengthdir_x(abs(object0.vspeed)*fr,90);
zy = target_y+lengthdir_y(abs(object0.vspeed)*fr,90);
}
var dis = instance_create(x,y,object_enemybullet)
with(dis) {motion_add(point_direction(x,y,other.id.zx,other.id.zy)+7-floor(random(14)),(other.id.shootspeed-1)) hspeed += object0.hspeed}}
else {
var frr = instance_create(x,y,object_enemybullet)
with(frr) {motion_add(other.id.a+20-floor(random(40)),choose(other.id.shootspeed-1,other.id.shootspeed-0.5,other.id.shootspeed,other.id.shootspeed+0.5,other.id.shootspeed+1))}
}
sound_stop(sound_enemyshoot) sound_play(sound_enemyshoot)
}

shootdelay = 0

