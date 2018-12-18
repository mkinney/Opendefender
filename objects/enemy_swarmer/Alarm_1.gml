if x <= target_x-200 or x >= target_x+200 {
if movdir = 0 and x > target_x {movdir = 1}
if movdir = 1 and x < target_x {movdir = 0}
}
turndelay = 0

