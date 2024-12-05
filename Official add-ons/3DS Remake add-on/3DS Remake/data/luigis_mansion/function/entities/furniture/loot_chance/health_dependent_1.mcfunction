execute unless entity @e[tag=searcher,limit=1] run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p5
execute if entity @e[tag=searcher,scores={Health=31..},limit=1,tag=!gooigi] run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p5
execute if entity @e[tag=searcher,scores={Health=..30},limit=1,tag=!gooigi] run function luigis_mansion:entities/furniture/loot_chance/m80
execute if entity @e[tag=searcher,scores={Health=16..},limit=1,tag=gooigi] run function 3ds_remake:entities/furniture/loot_chance/d50_m10_p5
execute if entity @e[tag=searcher,scores={Health=..15},limit=1,tag=gooigi] run function 3ds_remake:entities/furniture/loot_chance/m80