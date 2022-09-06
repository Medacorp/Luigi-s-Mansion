execute positioned 586 91 -19.0 run function luigis_mansion:spawn_entities/portrait_ghost/boolossus/fight
execute if entity @a[tag=portrait_battle,limit=1] positioned 586 91 -19.0 run scoreboard players set @e[tag=boolossus,distance=..0.7] Dialog 520
execute if entity @a[tag=portrait_battle,limit=1] positioned 586 91 -19.0 run teleport @e[tag=boolossus,distance=..0.7] 586 30.475 -19.0
scoreboard players set #boolossus_battle Wave 1