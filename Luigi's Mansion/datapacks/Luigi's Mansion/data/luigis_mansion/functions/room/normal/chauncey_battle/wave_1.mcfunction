execute positioned 792.0 11 64.0 run function luigis_mansion:spawn_entities/portrait_ghost/chauncey
execute positioned 792.0 11 64.0 run tag @e[tag=chauncey,distance=..0.7,limit=1] add fight
execute positioned 792.0 11 64.0 run scoreboard players set @e[tag=chauncey,distance=..0.7,limit=1] Move 25
scoreboard players set #chauncey_battle Wave 1