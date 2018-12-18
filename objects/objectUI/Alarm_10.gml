action_set_relative(1);
var __b__;
__b__ = action_if_variable(scoreshow, 2, 1);
if __b__
{
scoreshow += +1;
}
else
{
{
action_set_relative(0);
scoreshow = 0;
action_set_relative(1);
}
}
{
action_set_relative(0);
action_set_alarm(180, 10);
action_set_relative(1);
}
action_set_relative(0);
