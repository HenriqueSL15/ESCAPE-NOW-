inventory = false
scale = 3



coins = 0

key2 = false
key = false

count = 0

xBegin = 15 * scale
yBegin = 12 * scale

hSlots = 7
vSlots = 5
totalSlots = hSlots * vSlots
sizeSlots = 30 * scale
buffer = 4 * scale

wInventory = sprite_get_width(spr_invUI) * scale
hInventory = sprite_get_height(spr_invUI) * scale

enum Items{
	Chave,
	Moeda,
	Crowbar
}

enum Infos{
	Item,
	Quantidade,
	Raridade,
	Altura
}

gridItems = ds_grid_create(Infos.Altura,totalSlots)
ds_grid_set_region(gridItems,0,0,1,totalSlots - 1,-1)

//Primeiro Slot
gridItems[# Infos.Item, 0] = Items.Chave	
gridItems[# Infos.Quantidade, 0] = 1

//Segundo Slot
gridItems[# Infos.Item, 1] = Items.Moeda	
gridItems[# Infos.Quantidade, 1] = 87



