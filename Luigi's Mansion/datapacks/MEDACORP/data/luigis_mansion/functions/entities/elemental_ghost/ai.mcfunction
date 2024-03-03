tag @s[scores={SpawnTime=..20}] remove in_vacuum
function luigis_mansion:entities/ghost/ai
execute if entity @s[scores={SpawnTime=61..}] run function luigis_mansion:entities/elemental_ghost/ai/hurt
execute if entity @s[scores={SpawnTime=..60}] run function luigis_mansion:entities/elemental_ghost/ai/full