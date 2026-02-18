
//Iniciando a maquina de estados
function estado() constructor {
	//Iniciando o estado
	static inicia = function() {};
	
	//Rodando o estado
	static roda = function() {};
	
	//Finalizando o estado
	static finaliza = function() {};
	
}

//Funçoes para controlar a maquina de estado
//iniciando o estado
function inicia_estado(_estado) {
	//Salvando o estado passado numa variavel
	estado_atual = _estado;
	
	//Iniciando o estado atual
	estado_atual.inicia();
}

//Rodando o estado 
function roda_estado(){
	estado_atual.roda();
}

//Trocando de estado
function troca_estado(_estado){
	//Finalizando o estado atual
	estado_atual.finaliza();
	
	//Rodando o proximo estado
	estado_atual = _estado;
	
	//Iniciando o proximo estado
	estado_atual.inicia();
}

//Definindo a sprite
function define_sprite(_dir = 0, sprite_side, sprite_front, sprite_back){
		var _sprite;
	
	switch(_dir){
		case 0: _sprite = sprite_side; break;
		case 1: _sprite = sprite_side; break;
		case 2: _sprite = sprite_back; break;
		case 3: _sprite = sprite_side; break;
		case 4: _sprite = sprite_side; break;
		case 5: _sprite = sprite_side; break;
		case 6: _sprite = sprite_front; break;
		case 7: _sprite = sprite_side; break;
	}
	//show_debug_message(_dir);
	return _sprite;
}