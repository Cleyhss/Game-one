//Iniciando Variavéis 

//Iniciando o primeiro estado "idle" ou "parado"
estado_idle = new estado();

//Iniciando o estado de "walk"
estado_walk = new estado();

#region estado_idle
//O primeiro estado idle precisa de um "inicia" que vai ser setado no Script "state_machine"
estado_idle.inicia = function() {

	//Ajustando a sprite
	sprite_index = define_sprite(dir, spr_player_idle_side, spr_player_idle_front, spr_player_idle_back);
	
	//Garantindo que a animação começa do primeiro frame
	image_index = 0;
}
estado_idle.roda = function() {
	//Achando a condição para SAIR do estado atual
	//Se estiver em movimento entra em estado de "walk"
	
	if (up xor down or left xor right) {
		troca_estado(estado_walk);
	}
}

#endregion

#region estado_walk
estado_walk.inicia = function() {
	dir = (point_direction(0, 0, right - left, down - up) div 45);
	//Configurando o sprite
	sprite_index = define_sprite(dir, spr_player_walk_side, spr_player_walk_front, spr_player_walk_back);
	
	//Começando a animação do inicio
	image_index = 0;
}

estado_walk.roda = function() {
	//Ajustando direção com base na direção que o player esta indo
	dir = (point_direction(0, 0, velh, velv) div 45);
	
	//Ajustando a esquerda e dirita
	if(velh != 0) {
		image_xscale = sign(velh);
	}
	
	//Configurando o sprite
	sprite_index = define_sprite(dir, spr_player_walk_side, spr_player_walk_front, spr_player_walk_back);
	
	//Input de velocidade vertical e horizontal
	velv = (down - up) * vel;
	velh = (right - left) * vel;
	
	//Condição para sair do estado
	//se eu estou parado eu vou para o estado de "idle"
	if (velv == 0 && velh == 0){
		troca_estado(estado_idle);
	}
}

#endregion

#region Iniciando_Variaveis
//Controles iniciados sem valor
up = noone;
down = noone;
left = noone;
right = noone;

//variaveis de movimento
velh = 0;	//velocidade horizontal
velv = 0;	//velocidade vertical

//velocidade jogador
vel = 1;

//controlando as direções do personagem
dir = 0;

#endregion

#region Iniciando_funcoes
controles = function() {
	up    = keyboard_check(vk_up) or keyboard_check(ord("W"));
	down  = keyboard_check(vk_down) or keyboard_check(ord("S"));
	left  = keyboard_check(vk_left) or keyboard_check(ord("A"));
	right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	
	//Confirmando colisão
	//move_and_collide(velh, 0, obj_colisor, 12)
	//move_and_collide(0, velv, obj_colisor, 12)
	
}

//Ajustando a profundidade
ajusta_depth = function() {
	depth = -y;
}

//Iniciando a maquina de estados
inicia_estado(estado_idle);

#endregion