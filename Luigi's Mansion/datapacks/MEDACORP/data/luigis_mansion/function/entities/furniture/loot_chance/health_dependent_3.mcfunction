execute unless entity @e[tag=searcher,limit=1] run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute if entity @e[tag=searcher,scores={Health=31..},limit=1] run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute if entity @e[tag=searcher,scores={Health=..30},limit=1] run function luigis_mansion:entities/furniture/loot_chance/d25_m20_p5