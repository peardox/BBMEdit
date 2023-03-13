/// @description Insert description here
// You can write your code in this editor
rn = 0;

	model = new PDX_Model("Character/Character.bbmod", true, false, 180, 270, 90, 1, { Size: { X: 3.62, Y: 1.05, Z: 3.76} });
	animIdx = 0;
//	model = new PDX_Model("licensed/cat/Cat_Chubby.bbmod", true, false, 180, 270, 90);
//	animIdx = 5;
//	model = new PDX_Model("Boy/Boy.bbmod", true, false);
//	animIdx = 12;
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


animationPlayer = new BBMOD_AnimationPlayer(model);

global.running = true;