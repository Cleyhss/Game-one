//Ajustando a profundidade
depth = -bbox_bottom;

//Deixando transparente caso o jogador passe por tras
if (transparente){
	if (instance_exists(obj_player)) { //Verificando se o player existe
	
		//vendo se o jogador está mais alto do que o objeto
		if (obj_player.y < y){ 
			//vendo se o jogador está atras do objeto
			if (point_in_rectangle(obj_player.x, obj_player.y, bbox_left - 10, bbox_top - 30, bbox_right + 10, bbox_top)){
				image_alpha = lerp(image_alpha, .5, .08);
			}
			else{
				image_alpha = lerp(image_alpha, 1, .1);
			}
		}
	}
}