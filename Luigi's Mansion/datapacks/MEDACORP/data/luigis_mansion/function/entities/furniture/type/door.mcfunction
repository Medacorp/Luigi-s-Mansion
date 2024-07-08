execute unless entity @s[tag=!open_door,tag=!bash_door,tag=!unlock_door,tag=!forced_animation] run tag @s remove shake
execute if entity @s[tag=in_water,tag=burning] run function luigis_mansion:entities/furniture/type/door/extinguish with entity @s ArmorItems[3].components."minecraft:custom_data"
execute if entity @s[tag=burning] run function luigis_mansion:entities/furniture/type/door/burn
execute if entity @s[tag=try_open,tag=!open_door,tag=!bash_door,tag=!unlock_door] run function luigis_mansion:entities/furniture/type/door/use
tag @s remove try_open

execute if entity @s[tag=!open_door,tag=!forced_animation] run fill ^ ^ ^-0.5 ^ ^1 ^-0.5 minecraft:light_gray_stained_glass replace minecraft:air
execute unless entity @s[tag=!open_door,tag=!forced_animation] run function luigis_mansion:entities/furniture/type/door/open_door
execute if entity @s[tag=bash_door] run function luigis_mansion:entities/furniture/type/door/bash_door
execute if entity @s[tag=unlock_door] run function luigis_mansion:entities/furniture/type/door/unlock_door

execute unless entity @s[tag=!remove_from_existence,tag=!dead] run setblock ^ ^ ^0.5 minecraft:air

execute if entity @s[tag=blockade_sounds_can_play] run function luigis_mansion:entities/furniture/type/door/blockade_sound
tag @s remove had_blockade
tag @s[tag=blockade] add had_blockade
tag @s[tag=area_blockade] add had_blockade
tag @s add blockade_sounds_can_play