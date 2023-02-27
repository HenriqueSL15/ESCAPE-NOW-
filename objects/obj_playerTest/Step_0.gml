/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check(ord("W"))
key_left = keyboard_check(ord("A"))
key_down = keyboard_check(ord("S"))
key_right = keyboard_check(ord("D"))

var move = key_right - key_left

hsp = move * walksp

x = x + hsp



