function spawn_moedia(){
	if(place_meeting(x, y, Obj_player1) and keyboard_check(vk_space) or 
	place_meeting(x, y, Obj_player2) and keyboard_check(vk_enter)) {
		aleatorio();
		while(place_meeting(global.alx, global.aly, Obj_murio)) {
			aleatorio();
		}
		if(!verif_moedia) {
			image_index = 1;
			instance_create_layer(global.alx, global.aly, "moedia", Obj_moedia);
			verif_moedia = true;
		} 
	} else {
		image_index = 0;
		verif_moedia = false;
	}
}
Obj_player1.velocidade = 1;