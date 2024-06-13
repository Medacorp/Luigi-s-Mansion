execute if entity @s[tag=!flipped_gravity,tag=!shrunk] run function 3ds_remake:animations/gooigi/melt/normal/head
execute if entity @s[tag=flipped_gravity,tag=!shrunk] run function 3ds_remake:animations/gooigi/melt/normal_flipped/head
execute if entity @s[tag=!flipped_gravity,tag=shrunk] run function 3ds_remake:animations/gooigi/melt/small/head
execute if entity @s[tag=flipped_gravity,tag=shrunk] run function 3ds_remake:animations/gooigi/melt/small_flipped/head