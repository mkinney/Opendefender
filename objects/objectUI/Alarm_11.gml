/// @description TODO describe what this alarm does
/// TODO: This code does not make sense to me. Please review.
action_set_relative(1);
var __b__;
__b__ = action_if_variable(imagenum, 3, 1);
if (__b__) {
	imagenum += +1;
} else {
	{
		action_set_relative(0);
	imagenum = 0;
	action_set_relative(1);
	}
}

{
	action_set_relative(0);
	action_set_alarm(4, 11);
	action_set_relative(1);
}

action_set_relative(0);
