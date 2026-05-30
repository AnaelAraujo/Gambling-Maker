global.pontos = 0;
function aleatorio(){
	randomise();
	global.alx = random_range(16, 1350);	//aleatorizar a posição X da moeda
	global.aly = random_range(16, 752);		//aleatorizar a posição X da moeda
}
global.aport = [false, false, false];	//verificador para abrir a porta AZUL selecionada
global.verport = [false, false, false]; //verificador para abrir a porta AZUL selecionada