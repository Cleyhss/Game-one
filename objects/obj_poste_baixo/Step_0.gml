event_inherited();

//variacao = random_range(-1,1);

var agora_noite = (obj_luz.momento > 0.6);

if (agora_noite && !era_noite) {
    // virou noite
    sprite_index = spr_poste_baixo_aceso;
	image_index = 0;
}

if (!agora_noite && era_noite) {
    // virou dia
    sprite_index = sprite_original;
}

era_noite = agora_noite;



timer--;

if (timer <= 0) {
    alvo = random_range(-1, 1);
    timer = 20; // muda a cada 20 frames (~0.33s)
}

// aproxima suavemente do alvo
variacao = lerp(variacao, alvo, 0.06);

