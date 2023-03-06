/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check(ord("W"))
key_left = keyboard_check(ord("A"))
key_down = keyboard_check(ord("S"))
key_right = keyboard_check(ord("D"))

var move = key_right - key_left

var Vmove =  key_down - key_up

hsp = move * walksp

vsp = Vmove * walksp

if(obj_inventory.inventory == false){
	movable = true
	item = 2
}else{
	movable = false	
}

if(movable == true){
//Horizontal Movement/Physics
if(place_meeting(x+hsp,y,obj_brickWall)){
	while(!place_meeting(x+sign(hsp),y,obj_brickWall)){
		x = x + sign(hsp)
	}
	hsp = 0
}

if(place_meeting(x+hsp,y,obj_desk)){
	while(!place_meeting(x+sign(hsp),y,obj_desk)){
		x = x + sign(hsp)
	}
	hsp = 0
}

if(place_meeting(x+hsp,y,obj_bed1)){
	while(!place_meeting(x+sign(hsp),y,obj_bed1)){
		x = x + sign(hsp)
	}
	hsp = 0
}

x = x + hsp








//Actual key movement AND animations

	
	
	if(key_right){
		xDir = 1
		yDir = 0
		sprite_index = spr_playerR
		image_xscale = 1
	
	}

	if(key_left){
		xDir = -1
		yDir = 0
		sprite_index = spr_playerRL

	}



	if(key_up){
		yDir = 1
		xDir = 0
		sprite_index = spr_playerWalkingUp
	}


	if(key_down){
		yDir = -1
		xDir = 0
		sprite_index = spr_playerWalkingDown
	}



if(place_meeting(x,y+vsp,obj_desk)){
	while(!place_meeting(x,y+sign(vsp),obj_desk)){
		y = y + sign(vsp)
	}
	vsp = 0
}

if(place_meeting(x,y+vsp,obj_bed1)){
	while(!place_meeting(x,y+sign(vsp),obj_bed1)){
		y = y + sign(vsp)
	}
	vsp = 0
}

if(place_meeting(x,y+vsp,obj_invisibleWall)){
	while(!place_meeting(x,y+sign(vsp),obj_invisibleWall)){
		y = y + sign(vsp)
	}
	vsp = 0
}

if(place_meeting(x,y+vsp,obj_brickWall)){
	while(!place_meeting(x,y+sign(vsp),obj_brickWall)){
		y = y + sign(vsp)
	}
	vsp = 0
}

y = y + vsp

}else{
	if(item == 1){
		sprite_index = spr_playerUp
	}else if(item == 2){
		sprite_index = spr_playerLeft
	}else if(item == 3){
		sprite_index = spr_playerUp
	}
	
}
