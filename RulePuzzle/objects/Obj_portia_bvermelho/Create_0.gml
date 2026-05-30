verif = false;
function verificador() {
	if(global.verport[0] and !verif) {
		image_index += 1;
		verif = true;
	} else if(!global.verport[0] and verif) {
		image_index -= 1;
		verif = false;
	}
	
}