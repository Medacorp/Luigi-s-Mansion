execute if entity @s[tag=!flipped_gravity,nbt=!{Small:1b}] run function 3ds_remake:animations/gooigi/melt/normal/chest
execute if entity @s[tag=flipped_gravity,nbt=!{Small:1b}] run function 3ds_remake:animations/gooigi/melt/normal_flipped/chest
execute if entity @s[tag=!flipped_gravity,nbt={Small:1b}] run function 3ds_remake:animations/gooigi/melt/small/chest
execute if entity @s[tag=flipped_gravity,nbt={Small:1b}] run function 3ds_remake:animations/gooigi/melt/small_flipped/chest