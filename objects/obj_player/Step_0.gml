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

if(place_meeting(x+hsp,y,obj_brickWall)){
	while(!place_meeting(x+sign(hsp),y,obj_brickWall)){
		x = x + sign(hsp)
	}
	hsp = 0
}

x = x + hsp

if(key_right){
	
}


if(place_meeting(x,y+sign(vsp),obj_brickWall)){

}

y = y + vsp


