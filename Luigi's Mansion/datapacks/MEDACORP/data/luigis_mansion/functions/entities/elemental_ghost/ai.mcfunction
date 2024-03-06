function luigis_mansion:entities/ghost/get_target
tag @s[scores={SpawnTime=..20}] remove in_vacuum
execute if entity @s[scores={SpawnTime=61..}] run function luigis_mansion:entities/elemental_ghost/ai/hurt
execute if entity @s[scores={SpawnTime=..60}] run function luigis_mansion:entities/elemental_ghost/ai/full
execute at @s run function luigis_mansion:entities/ghost/ai