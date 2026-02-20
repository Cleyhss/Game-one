var ex = clamp(obj_luz.momento, 0, 1);
var t = ex * ex * (3 - 2 * ex);

// sprite dia
draw_sprite_ext(spr_poste_baixo, image_index, x, y, 1, 1, 0, c_white, 1 - t);

// sprite noite
draw_sprite_ext(spr_poste_baixo_aceso, image_index, x, y, 1, 1, 0, c_white, t);

draw_self();