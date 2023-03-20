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
	if(!key2){
		txt = "It's locked, why?"
	}else{
		txt = "More coins, I'm going to be rich, OH YEAHHH"
		
		if(obj_textBox.charCount < string_length(obj_player.txt)){
			key2 = true
			obj_inventory.coins = true
		}else{
			obj_inventory.coins = true
			key2 = false
		}
		
	}
	
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
	if(!crowbar){
		txt = "COOOOLLLDD"
	}else{
		txt = "Got a key, but anyone would put a key here, whaaaat"
		
		if(obj_textBox.charCount < string_length(obj_player.txt)){
			crowbar = true
			key2 = false
		}else{
			key2 = true
			crowbar = false
		}
		
	}
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
	if (!crowbar){
		txt = "It's seems that there's  a crowbar blocking the way of the water."
		
		if(obj_textBox.charCount < string_length(obj_player.txt)){
			crowbar = false
		}else{
			crowbar = true	
		}
	}else{
		txt = "Everything is normal.... I think...."	
	}
	
	item = 1
	while(obj_textBox.isWriting == true && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		text = false
	}
	
	

}

//Room 2


//NEXT ROOM
if(xDir == 1 && place_meeting(x,y,obj_nextSceneRight)){
	if room == Room1{
	text = true
	instance_create_layer(403,440,"Text",obj_textBox)
		txt = "Looks like I need some coins to open this door, I really don't know why but I need "
	item = 4
	if obj_inventory.coins{
		room_goto_next()
	}
	while(obj_textBox.isWriting == true && obj_textBox.charCount < string_length(txt)){
		obj_textBox.charCount = string_length(txt)
	}
	
	if(obj_textBox.alreadyWrote == true && obj_textBox.isWriting == false){
		instance_destroy(obj_textBox)
		text = false
	}
	}
	if room == Room2{
		room_goto_next()
	}
	
	
	
}

if(xDir == -1 && place_meeting(x,y,obj_nextSceneLeft)){
	room_goto_previous()
	
}
