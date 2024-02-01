execute if entity @s[tag=!flipped_gravity,nbt=!{Small:1b}] run function 3ds_remake:animations/gooigi/melt/normal/left_leg
execute if entity @s[tag=flipped_gravity,nbt=!{Small:1b}] run function 3ds_remake:animations/gooigi/melt/normal_flipped/left_leg
execute if entity @s[tag=!flipped_gravity,nbt={Small:1b}] run function 3ds_remake:animations/gooigi/melt/small/left_leg
execute if entity @s[tag=flipped_gravity,nbt={Small:1b}] run function 3ds_remake:animations/gooigi/melt/small_flipped/left_leg