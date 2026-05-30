verif = false;
verif_moedia = false
function abrir_portia() {

	if (place_meeting(x, y, Obj_player1) and keyboard_check(vk_space)){
		image_index = 1;
		if(verif) {
			global.verport[0] = false;
		}
		
		global.verport[0] = true;
		verif = true;
	}
	else {
		image_index = 0;
	}
}
function spawn_moedia(){
	if(place_meeting(x, y, Obj_player1) and keyboard_check(vk_space)) {
		aleatorio();
		while(place_meeting(global.alx, global.aly, Obj_murio)) {
			aleatorio();
		}
		if(!verif_moedia) {
			instance_create_layer(global.alx, global.aly, "moedia", Obj_moedia);
			verif_moedia = true;
		} 
	} else {
		verif_moedia = false;
	}
}
	