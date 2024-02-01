execute if entity @s[tag=!flipped_gravity] if score #mirrored Selected matches 0 run function 3ds_remake:animations/polterpup/revive/normal/item
execute if entity @s[tag=flipped_gravity] if score #mirrored Selected matches 0 run function 3ds_remake:animations/polterpup/revive/normal_flipped/item
execute if entity @s[tag=!flipped_gravity] if score #mirrored Selected matches 1 run function 3ds_remake:animations/polterpup/revive/mirrored/item
execute if entity @s[tag=flipped_gravity] if score #mirrored Selected matches 1 run function 3ds_remake:animations/polterpup/revive/mirrored_flipped/item