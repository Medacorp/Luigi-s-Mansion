execute unless entity @e[tag=searcher,limit=1] run function luigis_mansion:entities/furniture/loot_chance/h15
execute if entity @e[tag=searcher,scores={Health=31..},limit=1] run function luigis_mansion:entities/furniture/loot_chance/h15
execute if entity @e[tag=searcher,scores={Health=..30},limit=1] run function luigis_mansion:entities/furniture/loot_chance/h50