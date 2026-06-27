execute if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/get_up/normal/right_arm
execute if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/get_up/normal_shrunk/right_arm
execute if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/get_up/normal_flipped/right_arm
execute if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/get_up/normal_flipped_shrunk/right_arm