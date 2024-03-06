function luigis_mansion:entities/ghost/get_target
function luigis_mansion:entities/ghost/ai
tag @s add visible

execute if entity @s[tag=element_hurt] run function luigis_mansion:entities/fake_door/burn
execute if entity @s[tag=element_hurt,tag=in_water] run function luigis_mansion:entities/fake_door/extinguish
execute if entity @s[tag=!element_hurt] run setblock ^ ^ ^0.5 minecraft:air
execute if entity @s[tag=try_open,tag=!attack] run function luigis_mansion:entities/fake_door/use
tag @s remove try_open

execute if entity @s[tag=attack] run function luigis_mansion:entities/fake_door/attack

execute unless entity @s[tag=!remove_from_existence,tag=!dead] run setblock ^ ^ ^0.5 minecraft:air