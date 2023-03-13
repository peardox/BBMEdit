/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)) {
	rn = wrap(++rn, 64);
	model.BBox.Reorient(setRotationBase(rn));
}
if(keyboard_check_pressed(vk_f5)) {
	rn = 0;
	model.BBox.Reorient(setRotationBase(rn));
}
var _rb = setRotationBase(rn);

model.drawAxes();
model.DrawBoundingBox();

draw_set_color(c_white);

if(global.use_peardox) {
	draw_text(8,  0, "Original = " + string(model.BBox.Original));	
	draw_text(8, 16, "BBox    = { Pivot : " + string(model.BBox.Pivot) + 
					 ", Min : " + string(model.BBox.Min) +
					 ", Max : " + string(model.BBox.Max) +
					 ", Size : " + string(model.BBox.Size) +
					 ", AxisRotation : " + string(model.BBox.AxisRotation) +
					 ", Translation : " + string(model.BBox.Translation) +
					 " }");	
	draw_text(8, 32, "RotBase = " + string(_rb) + " (" + string(rn) + ")");	
	
}
draw_text(8, 48, "Frame = " + string(global.frame) + 
				 ", FPS = " + string(fps) + 
				 ", Real = " + string(global.rfps) +
				 ", Rot = " + string(global.rot));	
				 
//draw_text(8, 64, "AxisBBox = " + string(model.AxisBBox));

draw_text(8, 96, "Cam Pos : " + string(oCamera.camera.Position) +
				 ", Cam Tgt : " + string(oCamera.camera.Target) + 
				 ", Cam Up  : " + string(oCamera.camera.get_up()) +
				 ", Cam Fwd  : " + string(oCamera.camera.get_forward()) + 
				 ", Cam Ortho : " + string(oCamera.camera.Orthographic)
				 );

if(array_length(global.resources.Missing) > 0) {
	draw_text(8, 136, "Missing image textures (" + string(array_length(global.resources.Missing)) + ")");
	for(var i = 0; i < array_length(global.resources.Missing); i++) {
		draw_text(8, 152 + (i * 16), global.resources.Missing[i]);
	}
}
