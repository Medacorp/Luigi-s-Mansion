execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/flip_gravity/normal/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/flip_gravity/normal_shrunk/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/flip_gravity/normal_flipped/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/flip_gravity/normal_flipped_shrunk/head
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/flip_gravity/mirrored/head
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/flip_gravity/mirrored_shrunk/head
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/flip_gravity/mirrored_flipped/head
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/flip_gravity/mirrored_flipped_shrunk/head
tag @s[tag=flipped_gravity] add was_flipped
tag @s[tag=!flipped_gravity] remove was_flipped