execute if entity @s[tag=!flipped_gravity,nbt=!{Small:1b}] run function 3ds_remake:animations/gooigi/melt/normal/right_arm
execute if entity @s[tag=flipped_gravity,nbt=!{Small:1b}] run function 3ds_remake:animations/gooigi/melt/normal_flipped/right_arm
execute if entity @s[tag=!flipped_gravity,nbt={Small:1b}] run function 3ds_remake:animations/gooigi/melt/small/right_arm
execute if entity @s[tag=flipped_gravity,nbt={Small:1b}] run function 3ds_remake:animations/gooigi/melt/small_flipped/right_arm