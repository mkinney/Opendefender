/// drawing sprites in 3 different positions
/// need this to make the seamlessly wrapped screen look natural
for (var i = -1; i < 2; i++) {
	draw_sprite_ext(sprite_index, image_index, x + room_width * i, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	if (jet == 1) {
		if (see == 0) {
			draw_sprite_ext(sprite1, 0,x + room_width * i - 15, y - 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		}
		if (see == 1) {
			draw_sprite_ext(sprite1, 0,x + room_width * i + 15,y - 1, -1, image_yscale, image_angle, image_blend, image_alpha);
		}
	}
}