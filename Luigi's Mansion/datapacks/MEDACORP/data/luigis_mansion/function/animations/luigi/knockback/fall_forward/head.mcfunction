execute if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/knockback/fall_forward/normal/head
execute if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/knockback/fall_forward/normal_shrunk/head
execute if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/knockback/fall_forward/normal_flipped/head
execute if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/knockback/fall_forward/normal_flipped_shrunk/head