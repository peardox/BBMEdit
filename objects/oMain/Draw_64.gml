/// @description Insert description here
// You can write your code in this editor
// draw_sprite_stretched(global.resources.Sprites[0], 0, 0, 0, 128, 128);
//draw_sprite_stretched(skin, 0, 0, 0, 128, 128);

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
	draw_text(8, 32, "RotBase = " + string(_rb) + " (" + string(rn) + "), AxisRotation : " + string(model.BBox.AxisRotation));	
	
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
global.cursor_y = 160;
global.cursor_x = 0;

ShowStructText(model.BBox);
ShowText("");
ShowInt64Text("DPI X : ", global.screen_info.dpi_x);
ShowInt64Text("DPI Y : ", global.screen_info.dpi_y);
ShowInt64Text("DISPLAY WIDTH : ", global.screen_info.display_width);
ShowInt64Text("DISPLAY HEIGHT : ", global.screen_info.display_height);
ShowFloatText("DISPLAY ASPECT : ", global.screen_info.display_aspect, 8, 6);

ShowInt64Text("SCREEN WIDTH : ", global.screen_info.game_width);
ShowInt64Text("SCREEN HEIGHT : ", global.screen_info.game_height);
ShowInt64Text("SCREEN SCALE : ", global.screen_info.game_scale);
