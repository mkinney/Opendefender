var __b__;
__b__ = action_if_variable(a, 0, 0);
if __b__
{
action_color(255);
}
__b__ = action_if_variable(a, 1, 0);
if __b__
{
action_color(65535);
}
__b__ = action_if_variable(a, 2, 0);
if __b__
{
action_color(16711680);
}
__b__ = action_if_variable(a, 3, 0);
if __b__
{
action_color(32768);
}
action_draw_rectangle(0-room_width, 0, room_width+room_width, 270, 0);
