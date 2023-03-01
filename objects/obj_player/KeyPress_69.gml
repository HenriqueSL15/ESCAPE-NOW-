/// @description Insert description here
// You can write your code in this editor
txt = ""
item = 0
if(yDir == 1 && place_meeting(x,y-30,obj_picture2)){
	instance_create_layer(313,560,"Text",obj_textBox)
	txt = "This looks like a cool picture, I wonder who did it, must have been a good artist."
	item = 1
	if(obj_textBox.isWriting == true && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		movable = true
	}
	
	

}

if(xDir == -1 && place_meeting(x-30,y,obj_bed1)){
	instance_create_layer(313,560,"Text",obj_textBox)
	txt = "This bed is a mess, hope no one is seeing it."
	item = 2
	if(obj_textBox.isWriting == true && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		movable = true
	}
	
	

}

if(yDir == 1 && place_meeting(x,y-30,obj_desk)){
	instance_create_layer(313,560,"Text",obj_textBox)
	txt = "That's a big desk"
	item = 3
	if(obj_textBox.isWriting == true && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		movable = true
	}
	
	

}
