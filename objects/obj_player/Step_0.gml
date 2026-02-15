//Pegando os inputs do jogador
up    = keyboard_check(vk_up);
down  = keyboard_check(vk_down);
left  = keyboard_check(vk_left);
right = keyboard_check(vk_right);

//Input de velocidade
velv = (down - up) * vel;
velh = (right - left) * vel;