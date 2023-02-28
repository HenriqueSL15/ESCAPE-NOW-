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
	sprite_index = spr_playerR
	image_xscale = 1
}

if(key_left){
	sprite_index = spr_playerR
	image_xscale = -1
}

if(!key_right && !key_left && !key_up && !key_down){
	sprite_index = spr_player
}



if(key_up){
	sprite_index = spr_playerWalkingUp
}

if(key_down){
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


