function ShowFloatText(txt, floatval, tot = 0, dec = 0, colour = c_white) {
        ShowText(txt + string_format(floatval, tot, dec), colour);
}

function ShowInt64Text(txt, intval, colour = c_white) {
        ShowText(txt + string(intval), colour);
}

function ShowBoolText(txt, boolval, colour = c_white) {
        if(boolval) {
                ShowText(txt + " TRUE", colour);
        } else {
                ShowText(txt + " FALSE", colour);
        }
}

function ShowText(txt, colour = c_white) {
        draw_set_color(colour);
        if(string_length(txt) > 80) {
                txt = string_copy(txt, 1, 80) + "...";
        }
        draw_text(global.cursor_x, global.cursor_y, txt);
        global.cursor_y += global.screen_info.line_height;
        
}

function ShowStructText(structvar, colour = c_white, _depth = 0) {

        var keys = variable_struct_get_names(structvar);
        for (var i = array_length(keys)-1; i >= 0; --i) {
            var k = keys[i];
            var v = structvar[$ k];
            /* Use k and v here */
                if(is_string(v)) {
                        ShowText(k + " : " + v);
                } else if(is_bool(v)) {
                        ShowBoolText(k + " : ", v);
                } else if(is_real(v)) {
                        ShowFloatText(k + " : ", v);
                } else if(is_int64(v)) {
                        ShowInt64Text(k + " : ", v);
				} else if(is_instanceof(v, BBMOD_Vec3)) {
						ShowText(k + " : { X: " + string(v.X) + ", Y: " + string(v.Y) + ", Z: " + string(v.Z) + " }");
                } else if(is_struct(v)) {
						ShowText(k + " : depth = " + string(_depth));
                        ShowStructText(v, colour, _depth + 1);
                } else {
                        ShowText(k + " : Unknown");
                }
        }
        
}
