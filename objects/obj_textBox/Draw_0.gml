/// @description Insert description here
// You can write your code in this editor

if(obj_inventory.inventory == false){
//Draw Text Box

draw_sprite(spr_textBox,0,403,440)


//Draw Text
draw_set_font(fnt_text)
draw_set_color(c_black)

if(charCount < string_length(obj_player.txt)){
	obj_player.movable = false
	charCount += 0.5
	isWriting = true
}


textPart = string_copy(obj_player.txt,1,charCount)
draw_text_ext(txtBeginX+5,txtBeginY+4,textPart,stringHeight,boxWidth-5)


if(charCount == string_length(obj_player.txt)){
	alreadyWrote = true
	isWriting = false
}
}








//Script to make any font go to a specific scale without being blury

/*
draw_set_font(fnt_text);
var wantSize = 16; // height of text I want
var currSize = string_height(text);
var scale = wantSize / currSize;
draw_text_transformed(x, y, text, scale, scale, 0); // this will draw at 64 pixels tall
*/