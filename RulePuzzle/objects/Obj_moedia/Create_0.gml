verif_anim = false;
verif_spr = false;
val = 0;
depth = -y;
randomise();
al_chance = irandom_range(0, 100);
al_spr = 0;
function colisao_moedia(){
	if(place_meeting(x, y, Obj_player1) or place_meeting(x, y, Obj_player2)) {
		instance_destroy();
		global.pontos += val;
	}
	if (al_chance <= 60) {
		al_spr = 2;
		val = 1;
	} else if (al_chance <= 90) {
		al_spr = 1;
		val = 2;
	} else {
		al_spr = 0;
		val = 3;
	}
	image_index = al_spr;
}
function animacao_moedia() {
	if(!verif_anim) {
		image_xscale -= .1;
		if(image_xscale <= -1) verif_anim = true;
	} else {
		image_xscale += .1;
		if(image_xscale >= 1) verif_anim = false;
	}
}