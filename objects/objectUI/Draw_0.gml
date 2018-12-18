draw_set_font(font0)
draw_set_color(c_white)
if clear = 1 {
draw_set_halign(fa_center)
draw_text(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+50,string_hash_to_newline("ATTACK WAVE "+string(global.wave)))
draw_text(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+80,string_hash_to_newline("COMPLETED"))
if global.wave < 5
draw_text(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+124,string_hash_to_newline("BONUS X "+string(100*global.wave)))
if global.wave >= 5
draw_text(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+124,string_hash_to_newline("BONUS X "+string(500)))
for(var i=1;i<=global.humanoidnumber;i++) {
draw_sprite(sprite8,0,__view_get( e__VW.XView, 0 )+182+(10*i),__view_get( e__VW.YView, 0 )+162)
}
}
draw_set_halign(fa_left)
if global.gamestart = 1
draw_text(__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )+244,string_hash_to_newline(global.playerscore))
else {
if scoreshow = 0
draw_text(__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )+244,string_hash_to_newline("OPENDEFENDER"))
if scoreshow = 1
draw_text(__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )+244,string_hash_to_newline("2018 HJP"))
if scoreshow = 2
draw_text(__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )+244,string_hash_to_newline(global.playerscore))
}
if global.live > 0
draw_sprite(sprite0,smartbomb,__view_get( e__VW.XView, 0 )+46-20,__view_get( e__VW.YView, 0 )+256)
if global.live > 1
draw_sprite(sprite0,smartbomb,__view_get( e__VW.XView, 0 )+46,__view_get( e__VW.YView, 0 )+256)
if global.live > 2
draw_sprite(sprite0,smartbomb,__view_get( e__VW.XView, 0 )+46+20,__view_get( e__VW.YView, 0 )+256)
if global.smartbomb > 0
draw_sprite(sprite15,smartbomb,__view_get( e__VW.XView, 0 )+126-20,__view_get( e__VW.YView, 0 )+256)
if global.smartbomb > 1
draw_sprite(sprite15,smartbomb,__view_get( e__VW.XView, 0 )+126,__view_get( e__VW.YView, 0 )+256)
if global.smartbomb > 2
draw_sprite(sprite15,smartbomb,__view_get( e__VW.XView, 0 )+126+20,__view_get( e__VW.YView, 0 )+256)
for(var i=-1;i<2;i++) {
with(enemy_baiter) {
if x+room_width*i > objectUI.x - room_width/2 and x+room_width*i <= objectUI.x + room_width/2
draw_sprite(sprite_radar_icon,6,__view_get( e__VW.XView, 0 )+240+(x+room_width*i - objectUI.x)/12,__view_get( e__VW.YView, 0 )+246+y/12)
}
with(enemy_bomber) {
if x+room_width*i > objectUI.x - room_width/2 and x+room_width*i <= objectUI.x + room_width/2
draw_sprite(sprite_radar_icon,5,__view_get( e__VW.XView, 0 )+240+(x+room_width*i - objectUI.x)/12,__view_get( e__VW.YView, 0 )+246+y/12)
}
with(enemy_pod) {
if x+room_width*i > objectUI.x - room_width/2 and x+room_width*i <= objectUI.x + room_width/2
draw_sprite(sprite_radar_icon,4,__view_get( e__VW.XView, 0 )+240+(x+room_width*i - objectUI.x)/12,__view_get( e__VW.YView, 0 )+246+y/12)
}
with(enemy_swarmer) {
if x+room_width*i > objectUI.x - room_width/2 and x+room_width*i <= objectUI.x + room_width/2
draw_sprite(sprite_radar_icon,3,__view_get( e__VW.XView, 0 )+240+(x+room_width*i - objectUI.x)/12,__view_get( e__VW.YView, 0 )+246+y/12)
}
with(enemy_mutant) {
if x+room_width*i > objectUI.x - room_width/2 and x+room_width*i <= objectUI.x + room_width/2
draw_sprite(sprite_radar_icon,2,__view_get( e__VW.XView, 0 )+240+(x+room_width*i - objectUI.x)/12,__view_get( e__VW.YView, 0 )+246+y/12)
}
with(enemy_lander) {
if x+room_width*i > objectUI.x - room_width/2 and x+room_width*i <= objectUI.x + room_width/2
draw_sprite(sprite_radar_icon,1,__view_get( e__VW.XView, 0 )+240+(x+room_width*i - objectUI.x)/12,__view_get( e__VW.YView, 0 )+246+y/12)
}
with(object_humanoid) {
if x+room_width*i > objectUI.x - room_width/2 and x+room_width*i <= objectUI.x + room_width/2
draw_sprite(sprite_radar_icon,7,__view_get( e__VW.XView, 0 )+240+(x+room_width*i - objectUI.x)/12,__view_get( e__VW.YView, 0 )+246+y/12)
}
with(object_humanoid_saved) {
if x+room_width*i > objectUI.x - room_width/2 and x+room_width*i <= objectUI.x + room_width/2
draw_sprite(sprite_radar_icon,7,__view_get( e__VW.XView, 0 )+240+(x+room_width*i - objectUI.x)/12,__view_get( e__VW.YView, 0 )+246+y/12)
}
with(object0) {
if x+room_width*i > objectUI.x - room_width/2 and x+room_width*i <= objectUI.x + room_width/2
draw_sprite(sprite_radar_icon,0,__view_get( e__VW.XView, 0 )+240+(x+room_width*i - objectUI.x)/12,__view_get( e__VW.YView, 0 )+246+y/12)
}
}
draw_sprite_ext(sprite_radar,0,__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+242,image_xscale,image_yscale,image_angle,c_white,image_alpha)


