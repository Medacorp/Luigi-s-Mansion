execute if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/knockback/fall_backward/normal/head
execute if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/knockback/fall_backward/normal_shrunk/head
execute if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/knockback/fall_backward/normal_flipped/head
execute if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/knockback/fall_backward/normal_flipped_shrunk/head