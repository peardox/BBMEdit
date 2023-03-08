/// @description Insert description here
// You can write your code in this editor
if(global.use_peardox) {
	if(model.is_animated && !is_undefined(model.animationPlayer)) {
		model.animationPlayer.change(global.resources.Animations[animIdx], true);
		model.animationPlayer.update(delta_time);
	}
} else {
	animationPlayer.change(animArray[animIdx], true);
	animationPlayer.update(delta_time);
}
