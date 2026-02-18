//var t = clamp(obj_luz2.momento, 0, 1);
var ex = clamp(obj_luz.momento, 0, 1);
var t = ex * ex * (3 - 2 * ex);

// sprite dia
draw_sprite_ext(spr_poste_dir, image_index, x, y, 1, 1, 0, c_white, 1 - t);

// sprite noite
draw_sprite_ext(spr_poste_dir_aceso, image_index, x, y, 1, 1, 0, c_white, t);

draw_self();