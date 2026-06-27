execute if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/get_up/normal/left_leg
execute if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/get_up/normal_shrunk/left_leg
execute if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/get_up/normal_flipped/left_leg
execute if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/get_up/normal_flipped_shrunk/left_leg