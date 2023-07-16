execute if score #mirrored Selected matches 0 if entity @s[tag=!flipped_gravity] run function 3ds_remake:animations/polterpup/normal/save_luigi
execute if score #mirrored Selected matches 0 if entity @s[tag=flipped_gravity] run function 3ds_remake:animations/polterpup/normal/save_luigi_flipped
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity] run function 3ds_remake:animations/polterpup/mirrored/save_luigi
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity] run function 3ds_remake:animations/polterpup/mirrored/save_luigi_flipped