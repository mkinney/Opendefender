// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // world
global.__objectDepths[1] = -2; // objectUI
global.__objectDepths[2] = -1; // object0
global.__objectDepths[3] = 1; // object_laser
global.__objectDepths[4] = 4; // object_humanoid
global.__objectDepths[5] = 4; // object_humanoid_saved
global.__objectDepths[6] = 3; // object_humanoiddead
global.__objectDepths[7] = 5; // object_lowerbonus
global.__objectDepths[8] = 5; // object_savebonus
global.__objectDepths[9] = 10; // object_flash
global.__objectDepths[10] = 11; // object_giantexp
global.__objectDepths[11] = 2; // enemy_lander
global.__objectDepths[12] = 2; // enemy_mutant
global.__objectDepths[13] = 2; // enemy_bomber
global.__objectDepths[14] = 2; // enemy_pod
global.__objectDepths[15] = 2; // enemy_swarmer
global.__objectDepths[16] = 2; // enemy_baiter
global.__objectDepths[17] = 0; // object_enemybullet
global.__objectDepths[18] = 0; // shootables
global.__objectDepths[19] = 0; // enemyparent_mustkill
global.__objectDepths[20] = 0; // enemyparent
global.__objectDepths[21] = 0; // landerspawner
global.__objectDepths[22] = 0; // mutantspawner
global.__objectDepths[23] = 0; // bomberspawner
global.__objectDepths[24] = 0; // podspawner
global.__objectDepths[25] = 0; // swarmerspawner
global.__objectDepths[26] = 0; // baiterspawner
global.__objectDepths[27] = 0; // spawnerparent
global.__objectDepths[28] = 3; // object_explode


global.__objectNames[0] = "world";
global.__objectNames[1] = "objectUI";
global.__objectNames[2] = "object0";
global.__objectNames[3] = "object_laser";
global.__objectNames[4] = "object_humanoid";
global.__objectNames[5] = "object_humanoid_saved";
global.__objectNames[6] = "object_humanoiddead";
global.__objectNames[7] = "object_lowerbonus";
global.__objectNames[8] = "object_savebonus";
global.__objectNames[9] = "object_flash";
global.__objectNames[10] = "object_giantexp";
global.__objectNames[11] = "enemy_lander";
global.__objectNames[12] = "enemy_mutant";
global.__objectNames[13] = "enemy_bomber";
global.__objectNames[14] = "enemy_pod";
global.__objectNames[15] = "enemy_swarmer";
global.__objectNames[16] = "enemy_baiter";
global.__objectNames[17] = "object_enemybullet";
global.__objectNames[18] = "shootables";
global.__objectNames[19] = "enemyparent_mustkill";
global.__objectNames[20] = "enemyparent";
global.__objectNames[21] = "landerspawner";
global.__objectNames[22] = "mutantspawner";
global.__objectNames[23] = "bomberspawner";
global.__objectNames[24] = "podspawner";
global.__objectNames[25] = "swarmerspawner";
global.__objectNames[26] = "baiterspawner";
global.__objectNames[27] = "spawnerparent";
global.__objectNames[28] = "object_explode";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for