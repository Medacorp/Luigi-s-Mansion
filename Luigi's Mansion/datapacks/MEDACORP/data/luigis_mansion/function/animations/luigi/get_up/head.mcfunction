execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/get_up/normal/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/get_up/normal_shrunk/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/get_up/normal_flipped/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/get_up/normal_flipped_shrunk/head
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/get_up/mirrored/head
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/get_up/mirrored_shrunk/head
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/get_up/mirrored_flipped/head
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/get_up/mirrored_flipped_shrunk/head