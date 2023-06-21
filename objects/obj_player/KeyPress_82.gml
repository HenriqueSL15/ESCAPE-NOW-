/// @description Insert description here
// You can write your code in this editor

if(!alreadyStarted){
	audio_play_sound(Music1,10,true)
	alreadyStarted = true
}else if(alreadyStarted){
	audio_resume_sound(Music1)
}
