execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity] run function luigis_mansion:animations/bat/idle/normal/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity] run function luigis_mansion:animations/bat/idle/normal_flipped/head
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity] run function luigis_mansion:animations/bat/idle/mirrored/head
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity] run function luigis_mansion:animations/bat/idle/mirrored_flipped/head