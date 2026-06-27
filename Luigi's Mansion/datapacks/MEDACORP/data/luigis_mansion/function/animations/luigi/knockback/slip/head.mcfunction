execute if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/knockback/slip/normal/head
execute if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/knockback/slip/normal_shrunk/head
execute if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/knockback/slip/normal_flipped/head
execute if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/knockback/slip/normal_flipped_shrunk/head