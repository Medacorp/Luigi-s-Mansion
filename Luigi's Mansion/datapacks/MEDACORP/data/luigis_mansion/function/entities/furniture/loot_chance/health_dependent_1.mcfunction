execute unless entity @a[tag=searcher,limit=1] run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p5
execute if entity @a[tag=searcher,scores={Health=31..},limit=1] run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p5
execute if entity @a[tag=searcher,scores={Health=..30},limit=1] run function luigis_mansion:entities/furniture/loot_chance/m80