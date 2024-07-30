execute unless entity @a[tag=searcher,limit=1] run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute if entity @a[tag=searcher,scores={Health=31..},limit=1,tag=!gooigi] run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute if entity @a[tag=searcher,scores={Health=..30},limit=1,tag=!gooigi] run function 3ds_remake:entities/furniture/loot_chance/p80
execute if entity @a[tag=searcher,scores={Health=16..},limit=1,tag=gooigi] run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute if entity @a[tag=searcher,scores={Health=..15},limit=1,tag=gooigi] run function 3ds_remake:entities/furniture/loot_chance/p80