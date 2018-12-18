if dying = 0 {
var inst; inst = instance_place(x,y,enemyparent) 
if (inst != noone) {if inst.viewon = 1 {hit = 1 with(inst) other.id.host = id}}
var inst2; inst2 = instance_place(x+room_width,y,enemyparent) 
if (inst2 != noone) {if inst2.viewon = 1 {hit = 1 with(inst2) other.id.host = id}}
var inst3; inst3 = instance_place(x-room_width,y,enemyparent) 
if (inst3 != noone) {if inst3.viewon = 1 {hit = 1 with(inst3) other.id.host = id}}
if hit = 1
{dying = 1 host.hp = -1}
}
//collision with enemies. you must check the collisions in 3 different positions.

if x>room_width
x-=room_width
if x<0
x+=room_width
//wrap-around feature

if y < 10 {y = 10 vspeed = 0}
if y > 230 {y = 230 vspeed = 0}
if y >= 222 objectUI.smartbomb = 1
else objectUI.smartbomb = 0

if dying = 0 image_index = 0

if dyingdelay = 2 sprite_index = sprite19
else sprite_index = sprite0
if see = 0 image_xscale = 1
if see = 1 image_xscale = -1

