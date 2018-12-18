if global.gamestart = 1 {
if nomorespawn = 0 {
if global.wave = 2 {
repeat 3 {
instance_create(x,y,bomberspawner)}
repeat 1 {
instance_create(x,y,podspawner)}
}
if global.wave = 3 {
repeat 4 {
instance_create(x,y,bomberspawner)}
repeat 3 {
instance_create(x,y,podspawner)}
}
if global.wave >= 4 {
repeat 5 {
instance_create(x,y,bomberspawner)}
repeat 4 {
instance_create(x,y,podspawner)}
}
}
if global.spacebattle = 0 {
repeat 5 {
if landertime > 0 {landertime += -1 nomorespawn = 1
instance_create(x,y,landerspawner)
}
}
}
if global.spacebattle = 1 and mutantspawnnum = -1 {
mutantspawnnum = landernum
repeat mutantspawnnum {landertime = 0 nomorespawn = 1
instance_create(x,y,mutantspawner)
landernum = 0
}
}
if landertime > 0 alarm[0] = 300
else {
alarm[4] = 210}
}

