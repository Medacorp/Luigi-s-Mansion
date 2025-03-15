data modify entity @s[scores={SpawnTime=160}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.exploding
scoreboard players add @s SpawnTime 1
tag @s[tag=in_fire,tag=!in_water] add explode
tag @s[scores={SpawnTime=200},tag=!in_water] add explode
tag @s[tag=in_water] add dead
execute at @s if entity @e[tag=luigi,distance=..1,limit=1] run tag @s[tag=!in_vacuum,tag=!can_spit_2,tag=!spit] add explode
execute at @s if entity @e[tag=bowser_model,distance=..2,limit=1] run tag @s[tag=!in_vacuum] add explode
execute at @s[tag=explode] run function luigis_mansion:entities/ball/spike_ball/explode