execute if entity @s[tag=!flipped_gravity] if score #mirrored Selected matches 0 run function 3ds_remake:animations/polterpup/revive/normal/head
execute if entity @s[tag=flipped_gravity] if score #mirrored Selected matches 0 run function 3ds_remake:animations/polterpup/revive/normal_flipped/head
execute if entity @s[tag=!flipped_gravity] if score #mirrored Selected matches 1 run function 3ds_remake:animations/polterpup/revive/mirrored/head
execute if entity @s[tag=flipped_gravity] if score #mirrored Selected matches 1 run function 3ds_remake:animations/polterpup/revive/mirrored_flipped/head