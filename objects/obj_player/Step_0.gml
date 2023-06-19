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



if(!text && !obj_inventory.inventory){
	movable = true
}else{
	movable = false	
}
	
if obj_inventory.inventory{
	item = 0	
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

if(place_meeting(x+hsp,y,obj_oven)){
	while(!place_meeting(x+sign(hsp),y,obj_oven)){
		x = x + sign(hsp)
	}
	hsp = 0
}

if(place_meeting(x+hsp,y,obj_kitchenBase)){
	while(!place_meeting(x+sign(hsp),y,obj_kitchenBase)){
		x = x + sign(hsp)
	}
	hsp = 0
}

if(place_meeting(x+hsp,y,obj_fridge)){
	while(!place_meeting(x+sign(hsp),y,obj_fridge)){
		x = x + sign(hsp)
	}
	hsp = 0
}

if(place_meeting(x+hsp,y,obj_sink)){
	while(!place_meeting(x+sign(hsp),y,obj_sink)){
		x = x + sign(hsp)
	}
	hsp = 0
}

x = x + hsp








//Actual key movement AND animations

	
	
	if(key_right){
		if(movable){
			xDir = 1
			yDir = 0
			sprite_index = spr_playerR
			image_xscale = 1
			
		}
		
	
	}

	if(key_left){
		if(movable){
			xDir = -1
			yDir = 0
			sprite_index = spr_playerRL
		}

	}



	if(key_up){
		if(movable){
			yDir = 1
			xDir = 0
			sprite_index = spr_playerWalkingUp
		}
	}


	if(key_down){
		if(movable){
			yDir = -1
			xDir = 0
			sprite_index = spr_playerWalkingDown
		}
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

if(place_meeting(x,y+vsp,obj_oven)){
	while(!place_meeting(x,y+sign(vsp),obj_oven)){
		y = y + sign(vsp)
	}
	vsp = 0
}

if(place_meeting(x,y+vsp,obj_kitchenBase)){
	while(!place_meeting(x,y+sign(vsp),obj_kitchenBase)){
		y = y + sign(vsp)
	}
	vsp = 0
}

if(place_meeting(x,y+vsp,obj_fridge)){
	while(!place_meeting(x,y+sign(vsp),obj_fridge)){
		y = y + sign(vsp)
	}
	vsp = 0
}

if(place_meeting(x,y+vsp,obj_sink)){
	while(!place_meeting(x,y+sign(vsp),obj_sink)){
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
	}else if(item == 4){
		sprite_index = spr_playerRight
	}
}
