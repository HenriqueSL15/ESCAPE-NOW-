/// @description Insert description here
// You can write your code in this editor
var wGui = display_get_gui_width()
var hGui = display_get_gui_height()

var xMouse = device_mouse_x_to_gui(0)
var yMouse = device_mouse_y_to_gui(0)

if(inventory == true){
	var xInv = wGui/2 - wInventory/2
	var yInv = hGui/2 - hInventory/2
	
	draw_sprite_ext(spr_invUI,0,xInv,yInv,scale,scale,0,c_white,1)
	
	var ix = 0
	var iy = 0
	for(var i = 0;i < totalSlots;i++){
		var xSlot = xInv + xBegin + ((sizeSlots + buffer) * ix)
		var ySlot = yInv + yBegin + ((sizeSlots + buffer) * iy)
		
		if(point_in_rectangle(xMouse,yMouse,xSlot,ySlot, xSlot + sizeSlots,ySlot + sizeSlots)){
			draw_sprite_ext(spr_invSelect,0,xSlot,ySlot,scale,scale,0,c_white,1)
		}
		draw_set_color(c_black)
		if(gridItems[# Infos.Item,i] == 0 && key == true && coins == false){
			
			draw_sprite_ext(spr_key,gridItems[# Infos.Item,i],xSlot,ySlot,scale,scale,0,c_white,1)
			
			
			draw_set_font(fnt_text)
			
			
			
			
		}
		
		if(gridItems[# Infos.Item,i] == 0 && coins == true){
			draw_sprite_ext(spr_goldenCoin,0,xSlot,ySlot,scale,scale,0,c_white,1)
			
			draw_set_font(fnt_text)
			
			draw_text_ext_transformed(xSlot + sizeSlots-10,ySlot + sizeSlots-10,gridItems[# Infos.Quantidade,i+1],0,100,2,2,0)
		
		}else{
			
		}
		
		
		
		
		
		
		
		ix++;
		if(ix >= hSlots){
			ix = 0
			iy++;
		}
		
	}
}

// () !

