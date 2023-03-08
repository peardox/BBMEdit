/// @description Insert description here
// You can write your code in this editor

bbmod_material_reset();
if(global.use_peardox) {
	model.draw(0, 0, 100);
} else {
	animationPlayer.render();
}
new BBMOD_Matrix().ApplyWorld();
bbmod_material_reset();
