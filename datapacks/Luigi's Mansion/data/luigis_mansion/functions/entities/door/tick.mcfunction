tag @e[tag=door,tag=!frame,type=minecraft:armor_stand,distance=..0.7,limit=1] add this_model

execute if entity @s[scores={Health=..0},tag=!dead,tag=!captured] run function luigis_mansion:entities/door/drop_loot

execute if entity @s[tag=!burning,tag=!blockade,tag=!area_blockade] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 11
execute if entity @s[tag=burning] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 12
execute if entity @s[tag=barricade] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 13
execute if entity @s[tag=blockade,tag=!burning,tag=!fake] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 14
execute if entity @s[tag=area_blockade,tag=!burning,tag=!fake] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 15
execute if entity @s[tag=fake] run teleport @e[tag=this_model,limit=1] ^ ^ ^0.15

execute if entity @s[tag=extinguish] run function luigis_mansion:entities/door/extinguish
execute if entity @s[tag=burning] run function luigis_mansion:entities/door/burn
execute if entity @s[tag=try_open,tag=!open_door,tag=!bash_door,tag=!unlock_door,tag=!attack] run function luigis_mansion:entities/door/use
tag @s remove try_open

fill ^ ^ ^-0.5 ^ ^1 ^-0.5 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[tag=!fake,tag=!open_door,tag=!bash_door,tag=!unlock_door,tag=!attack] unless entity @s[tag=!in_vacuum,tag=!was_shaking] run function luigis_mansion:entities/door/shake
execute if entity @s[tag=open_door] run function luigis_mansion:entities/door/open_door
execute if entity @s[tag=bash_door] run function luigis_mansion:entities/door/bash_door
execute if entity @s[tag=unlock_door] run function luigis_mansion:entities/door/unlock_door
execute if entity @s[tag=attack] run function luigis_mansion:entities/door/attack

execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @e[tag=this_model,limit=1] add remove_from_existence

tag @e[tag=this_model,limit=1] remove this_model

execute if entity @s[tag=blockade_sounds_can_play,tag=blockade,tag=!had_blockade] as @a[tag=same_room,tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute if entity @s[tag=blockade_sounds_can_play,tag=blockade,tag=!had_blockade] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/scare/normal
execute if entity @s[tag=blockade_sounds_can_play,tag=blockade,tag=!had_blockade] run playsound luigis_mansion:block.blockade.spawn block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=blockade_sounds_can_play,tag=!blockade,tag=!area_blockade,tag=had_blockade] run playsound luigis_mansion:block.blockade.disappear block @a[tag=same_room] ~ ~ ~ 1
tag @s remove had_blockade
tag @s[tag=blockade] add had_blockade
tag @s[tag=area_blockade] add had_blockade
tag @s add blockade_sounds_can_play