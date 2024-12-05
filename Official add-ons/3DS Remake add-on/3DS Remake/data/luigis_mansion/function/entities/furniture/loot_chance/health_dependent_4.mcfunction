execute unless entity @e[tag=searcher,limit=1] run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute if entity @e[tag=searcher,scores={Health=31..},limit=1,tag=!gooigi] run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute if entity @e[tag=searcher,scores={Health=..30},limit=1,tag=!gooigi] run function luigis_mansion:entities/furniture/loot_chance/h30_p15
execute if entity @e[tag=searcher,scores={Health=16..},limit=1,tag=gooigi] run function 3ds_remake:entities/furniture/loot_chance/h10_p10
execute if entity @e[tag=searcher,scores={Health=..15},limit=1,tag=gooigi] run function 3ds_remake:entities/furniture/loot_chance/h30_p15