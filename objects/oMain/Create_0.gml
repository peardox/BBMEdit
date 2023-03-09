/// @description Insert description here
// You can write your code in this editor
rn = 0;

if(global.use_peardox) {
//	model = new PDX_Model("cat/Cat_Chubby.bbmod", true, false, 180, 270, 90);
//	animIdx = 5;
	model = new PDX_Model("Boy/Boy.bbmod", true, false);
	animIdx = 0;
//	model.Gimbal.Rotation.Y = 180;
//	model = new PDX_Model("cube/hexa123-in-air.bbmod", false, false, 0, 0, 0);
//	model = new PDX_Model("cube/hexa123-in-air.bbmod", false, false, 270, 270, 0);
//	model = new PDX_Model("cube/castle.bbmod", false, false, 0, 0, 0);
//	model = new PDX_Model("cube/hexa123-ground.bbmod", false, false, 270, 270, 0);
//	model = new PDX_Model("cube/hexa123.bbmod", false, false, 270, 180, 0);
//	model = new PDX_Model("cube/cube-z-x-view.bbmod", false, false, 270, 180, 0);
//	model = new PDX_Model("cube/defcube.bbmod", false, false, 0, 0, 0);
//	model = new PDX_Model("cube/cube.bbmod", false, false, 270, 270, 0);
	// model.Gimbal.Rotation.Y = 90;
} else {
	model = new BBMOD_Model("cat/Cat_Chubby.bbmod");

	material = array_create(1);
	var sprtex = sprite_add("cat/Cat Chubby.png", 0, false, true, 0, 0);
	sprite_prefetch(sprtex);
	material[0] = BBMOD_MATERIAL_DEFAULT_ANIMATED.clone();
	material[0].BaseOpacity = sprite_get_texture(sprtex, 0);
	model.Materials[0] = material[0];
	animArray = array_create(27);
	var _idx = 0;
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Air_Flip.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Claw_Attack.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Damage.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Fall.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Hear_Something.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Idle.bbanim"); // 5
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Idle_Focused.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Idle_Lay_Down.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Idle_Sit.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Idle_Sleep.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_JumpUp.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Land.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Lick_Paw.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Meow.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Run.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Run_In_Place.bbanim"); // 15
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Run_Turn_Left.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Run_Turn_Right.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Stretch.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Turn_Left.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Turn_Right.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Walk.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Walk_In_Place.bbanim"); // 22
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Walk_Backwards.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Walk_Backwards_In_Place.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Walk_Turn_Left.bbanim");
	animArray[_idx++] = new BBMOD_Animation("cat/Cat_Chubby_Walk_Turn_Right.bbanim");
	animIdx = 5;

	model.x = 0;
	model.y = 0;
	model.z = 0;
}

animationPlayer = new BBMOD_AnimationPlayer(model);

global.running = true;