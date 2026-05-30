verif = false;
function animacao() {
	if (place_meeting(x, y, Obj_player2) and keyboard_check(vk_enter)) image_index = 1;
	else image_index = 0;
}


function spawn_moedia(){
	if (place_meeting(x, y, Obj_player2) and keyboard_check(vk_enter)) {
			aleatorio();
			while(place_meeting(global.alx, global.aly, Obj_murio)) {
				aleatorio();
			}
			if(!verif) {
				instance_create_layer(global.alx, global.aly, "moedia", Obj_moedia);
				verif = true;
			}
			if(!verif) {
				instance_create_layer(global.alx, global.aly, "moedia", Obj_moedia);
				verif = true;
			}
	} else {
		verif = false;
	}
}
	