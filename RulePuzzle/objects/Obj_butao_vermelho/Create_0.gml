verif = true;
verif2 = 0;
verif_moedia = false;
function abrir_portia() {
	//checa se o Personagem está em cima do botão e se ele apertou o botão
	if(place_meeting(x, y, Obj_player1) and keyboard_check(vk_space)){
		//Altera a Sprite do botão para o botão pressionado
		image_index = 1;
		if(verif) {
			global.verport[0] = true;
			verif2 = true;
		}
		else {
			global.verport[0] = false;
			verif2 = true;
		}
	}
	else {
		image_index = 0;
		if(verif2) verif = !verif
		verif2 = false;
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
	