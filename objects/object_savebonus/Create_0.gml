action_set_relative(0);
dx = x - objectUI.x;
{ // TODO: Why is this a block?
	action_set_relative(1);
	global.playerscore += 500;
	action_set_relative(0);
}
action_set_alarm(60, 0);
action_set_relative(0);
