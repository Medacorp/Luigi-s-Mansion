tag @e[tag=fake_door,type=minecraft:armor_stand,distance=..0.7,limit=1] add this_model

execute if entity @s[scores={Health=..0},tag=!dead,tag=!captured] run function luigis_mansion:other/drop_loot
execute if entity @s[scores={Health=..0},tag=!dead,tag=!captured] run function luigis_mansion:old_entities/ghost/death_element

teleport @e[tag=this_model,limit=1] ^ ^ ^0.15

execute if entity @s[tag=extinguish] run function luigis_mansion:old_entities/fake_door/extinguish
execute if entity @s[tag=burning] run function luigis_mansion:old_entities/fake_door/burn
execute if entity @s[tag=try_open,tag=!attack] run function luigis_mansion:old_entities/fake_door/use
tag @s remove try_open

execute if entity @s[tag=attack] run function luigis_mansion:old_entities/fake_door/attack

execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @e[tag=this_model,limit=1] add remove_from_existence
execute unless entity @s[tag=!remove_from_existence,tag=!dead] run setblock ^ ^ ^0.5 minecraft:air

tag @e[tag=this_model,limit=1] remove this_model