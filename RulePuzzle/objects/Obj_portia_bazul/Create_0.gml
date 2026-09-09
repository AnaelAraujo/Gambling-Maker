verif = false;
cont = 0
function verificador() {
	if(global.aport[0] and !verif) {
		image_index += 1;
		verif = true;
	} else if(!global.aport[0] and verif) {
		image_index -= 1;
		verif = false;
	}
}