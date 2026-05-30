velocidade = 5;
interage = false;
cont = false;
function movimentacao() {
	if(keyboard_check(ord("W")) and !cont) {
		if(!place_meeting(x, y - velocidade, Obj_murio)) {
			if !interage image_index = 2;
			y -= velocidade;
		}
	} 
	
	if(keyboard_check(ord("S")) and !cont) {
		if(!place_meeting(x, y + velocidade, Obj_murio)) {
			if !interage image_index = 0;
			y += velocidade;
		}
	}
	
	if(keyboard_check(ord("A")) and !cont) {
		if(!place_meeting(x - velocidade, y, Obj_murio)) {
			if !interage image_index = 3;
			x -= velocidade;
		}
	}
	if(keyboard_check(ord("D")) and !cont) {
		if(!place_meeting(x + velocidade, y, Obj_murio)) {
			if !interage image_index = 1;
			x += velocidade;
		}
	} 
}

function interacao() {
	
	if(keyboard_check(vk_space)){ 
		if !cont {
			image_index +=4;
			velocidade = 0;
			interage = true;
			cont = true;
		}
	} else if !keyboard_check(vk_space) {
		if cont {
			image_index -=4;
			velocidade = 5;
			interage = false;
			cont = false;
		}
	}
}

function sem_sair_da_tela() {
	if(x <= -65) x = 1366;
	if(x >= 1367) x = -64;
	if(y <= -65) y = 768;
	if(y >= 769) y = -64;
}
