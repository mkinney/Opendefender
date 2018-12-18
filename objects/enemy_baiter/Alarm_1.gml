fr=point_distance(x,y,target_x,target_y)/(shootspeed);
if object0.vspeed >= 0 {
zx = target_x+lengthdir_x(abs(object0.vspeed)*fr,270);
zy = target_y+lengthdir_y(abs(object0.vspeed)*fr,270);
}
if object0.vspeed < 0 {
zx = target_x+lengthdir_x(abs(object0.vspeed)*fr,90);
zy = target_y+lengthdir_y(abs(object0.vspeed)*fr,90);
}
var dis = instance_create(x,y,object_enemybullet)
with(dis) {motion_add(point_direction(x,y,other.id.zx,other.id.zy)+7-floor(random(14)),(other.id.shootspeed)) hspeed += object0.hspeed}
sound_stop(sound_enemyshoot) sound_play(sound_enemyshoot)
shootdelay = 0

