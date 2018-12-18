if hp <= 0 {
instance_create(x,y,object_explode)
sound_stop(sound_enemydead) sound_play(sound_enemydead)
instance_destroy(); global.playerscore += 250}

if x>room_width
x-=room_width
if x<0
x+=room_width
if y < 10 y = 192
if y > 192 y = 10

