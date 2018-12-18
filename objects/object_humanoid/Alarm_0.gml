var changesee = choose(0, 0, 0, 1);
if (changesee == 1) {
	if (see == 0) {
		see = 1;
	} else {
		see = 0;
	}
}
if (see == 0) {
	x += 2;
} else if (see == 1) {
	x -= 2;
}
	
walkdelay = 0;