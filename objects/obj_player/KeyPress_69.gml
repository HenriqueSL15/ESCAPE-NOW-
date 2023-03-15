/// @description Insert description here
// You can write your code in this editor
txt = ""
item = 0



//PICTURE
if(yDir == 1 && place_meeting(x,y-30,obj_picture2)){
	text = true
	instance_create_layer(403,440,"Text",obj_textBox)
	txt = "This looks like a cool picture, I wonder who did it, must have been a good artist."
	item = 1
	while(obj_textBox.isWriting == true && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		text = false
	}
	
	

}

//BED
if(xDir == -1 && place_meeting(x-30,y,obj_bed1)){
	text = true
	instance_create_layer(403,440,"Text",obj_textBox)
	if(!obj_inventory.key){
		txt = "Oh, looks like I found a Key"
		
		
		if(obj_textBox.charCount < string_length(obj_player.txt)){
			obj_inventory.key = false
		}else{
			obj_inventory.key = true	
		}
		
	}else{
		txt = "This bed is a mess, hope no one is seeing it."	
	}
	item = 2
	if(obj_textBox.isWriting&& obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote && !obj_textBox.isWriting){
		instance_destroy(obj_textBox)
		text = false
	}
	
	

}

//DESK
if(yDir == 1 && place_meeting(x,y-30,obj_desk)){
	text = true
	instance_create_layer(403,440,"Text",obj_textBox)
	if(!obj_inventory.key){
		txt = "I can't open it, maybe if I had a key, that would help."
		
	}else if(obj_inventory.key && !obj_inventory.coins){
		
		txt = "OHHHH, there are some golden coins around here HEHE, pretty nice"
		if(obj_textBox.charCount < string_length(obj_player.txt)){
			obj_inventory.coins = false
		}else{
			obj_inventory.coins = true	
		}
		
				
	}else if(obj_inventory.key && obj_inventory.coins){
		txt = "Nothing more around here."
	}
	item = 3
	
	if(obj_textBox.isWriting && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		text = false
	}
	
	
}

//OVEN
if(yDir == 1 && place_meeting(x,y-30,obj_oven)){
	text = true
	instance_create_layer(403,440,"Text",obj_textBox)
		txt = "I don't think I need this right now, maybe later..."
		
		
		if(obj_textBox.charCount < string_length(obj_player.txt)){
			obj_inventory.coins = false
		}else{
			obj_inventory.coins = true	
		}
		
	item = 3
	
	if(obj_textBox.isWriting && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		text = false
	}
	
	
}

//KITCHEN BASE
if(yDir == 1 && place_meeting(x,y-30,obj_kitchenBase)){
	text = true
	instance_create_layer(403,440,"Text",obj_textBox)
	txt = "It's locked, why?"
	item = 1
	while(obj_textBox.isWriting == true && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		text = false
	}

}

//FRIDGE
if(yDir == 1 && place_meeting(x,y-30,obj_fridge)){
	text = true
	instance_create_layer(403,440,"Text",obj_textBox)
	txt = "COOOOLLLDD"
	item = 1
	while(obj_textBox.isWriting == true && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		text = false
	}
	
	

}

//SINK
if(yDir == 1 && place_meeting(x,y-30,obj_sink)){
	text = true
	instance_create_layer(403,440,"Text",obj_textBox)
	txt = "It's seems that there's something blocking the way of the water."
	item = 1
	while(obj_textBox.isWriting == true && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		text = false
	}
	
	

}

//NEXT ROOM
if(xDir == 1 && place_meeting(x,y,obj_nextSceneRight)){
	room_goto_next()
	
	
}

if(xDir == -1 && place_meeting(x,y,obj_nextSceneLeft)){
	room_goto_previous()
	
}
