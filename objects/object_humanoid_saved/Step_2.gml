see = object0.see
if see = 0 {
x = object0.x+1
y = object0.y+12
}
if see = 1 {
x = object0.x-1
y = object0.y+12
}

if x>room_width
x-=room_width
if x<0
x+=room_width

if see = 0 image_xscale = 1
if see = 1 image_xscale = -1

