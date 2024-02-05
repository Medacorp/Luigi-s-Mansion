execute at @s run function luigis_mansion:old_entities/ghost/hidden_tick
execute at @s run function luigis_mansion:old_animations/waiter/idle
data merge entity @s[tag=spawn] {HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:95}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:95}}]}
tag @s remove spawn