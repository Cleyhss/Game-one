//Criando a surface
surf	= noone;
momento = 0;

//Efeito de escurecer
dia_noite = function() {
	//Alterando o momento
	momento = (sin(get_timer() / 1000000) + 1) / 2;
	//checar se a surface existe
	if(surface_exists(surf)) {
		//Desenhando na surface
		surface_set_target(surf);
		
		draw_set_colour(c_black);
		draw_set_alpha(min(momento, 0.85));
		draw_rectangle(0, 0 , room_width, room_height, false);
		draw_set_alpha(1);
		draw_set_colour(-1);
		
		//Parando de desenhar
		surface_reset_target();		//se a surface existe, eu desenho ela
		draw_surface(surf, 0, 0);
	}
	else{
		//Se não existir, crio
		surf = surface_create(room_width, room_height);
		

		
	}
}