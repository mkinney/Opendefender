action_set_relative(1);

// TODO: There is some weird blocks... please review this code
var __b__;
__b__ = action_if_variable(num, 16, 0);
if __b__ {
	action_kill_object();
} else {
	{
		num += +1;
		__b__ = action_if_variable(a, 3, 1);
		if __b__ {
			a += +1;
		}
		else {
			{
				{
					action_set_relative(0);
					a = 0;
					action_set_relative(1);
				}
				action_end_sound(sound_explode);
				action_sound(sound_explode, 0);
			}
		}
	}
}

{ // TODO: why is this a block?
	action_set_relative(0);
	action_set_alarm(4, 0);
	action_set_relative(1);
}

action_set_relative(0);