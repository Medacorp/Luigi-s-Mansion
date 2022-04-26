tag @e[tag=door,tag=!frame,type=minecraft:armor_stand,distance=..0.7,limit=1] add this_model
tag @e[tag=door,tag=frame,type=minecraft:armor_stand,distance=..0.7,limit=1] add this_model_frame

execute if entity @s[scores={Health=..0},tag=!dead,tag=!captured] run function luigis_mansion:entities/door/drop_loot

execute if entity @s[tag=!burning,tag=!blockade,tag=!area_blockade] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 11
execute if entity @s[tag=burning] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 12
execute if entity @s[tag=barricade] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 13
execute if entity @s[tag=blockade,tag=!burning,tag=!fake] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 14
execute if entity @s[tag=area_blockade,tag=!burning,tag=!fake] run data modify entity @e[tag=this_model,limit=1] HandItems[{tag:{}}].tag.Damage set value 15
execute if entity @s[tag=fake] at @e[tag=this_model_frame,limit=1] run teleport @e[tag=this_model,limit=1] ^ ^ ^0.15

execute if entity @e[tag=extinguish] run function luigis_mansion:entities/door/extinguish
execute if entity @e[tag=burning] run function luigis_mansion:entities/door/burn
execute if entity @s[tag=talk,tag=!open_door,tag=!bash_door,tag=!unlock_door,tag=!attack] run function luigis_mansion:entities/door/use
tag @s remove talk

fill ^ ^ ^-0.5 ^ ^1 ^-0.5 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[tag=!fake] unless entity @s[tag=!in_vacuum,tag=!was_shaking] run function luigis_mansion:entities/door/shake
execute if entity @s[tag=open_door] run function luigis_mansion:entities/door/open_door
execute if entity @s[tag=bash_door] run function luigis_mansion:entities/door/bash_door
execute if entity @s[tag=unlock_door] run function luigis_mansion:entities/door/unlock_door
execute if entity @s[tag=attack] run function luigis_mansion:entities/door/attack

execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @e[tag=this_model_frame,limit=1] add remove_from_existence
execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @e[tag=this_model,limit=1] add remove_from_existence

tag @e[tag=this_model_frame,limit=1] remove this_model_frame
tag @e[tag=this_model,limit=1] remove this_model