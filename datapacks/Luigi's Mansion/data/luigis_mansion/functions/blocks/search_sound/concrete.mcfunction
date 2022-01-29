execute unless entity @s as @a run function #luigis_mansion:get_same_room
execute unless entity @a[tag=searcher,limit=1] run playsound luigis_mansion:block.search.concrete block @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=searcher,scores={InteractionTime=2,InteractionType=2},limit=1] run playsound luigis_mansion:block.search.concrete block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if entity @a[tag=searcher,scores={InteractionTime=2,InteractionType=3},limit=1] run playsound luigis_mansion:block.search.concrete block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @a[tag=searcher,scores={InteractionTime=2,InteractionType=4},limit=1] run playsound luigis_mansion:block.search.concrete block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if entity @a[tag=searcher,scores={InteractionTime=9,InteractionType=2},limit=1] run playsound luigis_mansion:block.search.concrete block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @a[tag=searcher,scores={InteractionTime=12,InteractionType=3},limit=1] run playsound luigis_mansion:block.search.concrete block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @a[tag=searcher,scores={InteractionTime=9,InteractionType=4},limit=1] run playsound luigis_mansion:block.search.concrete block @a[tag=same_room] ~ ~ ~ 1 0.9
execute unless entity @s run tag @a[tag=same_room] remove same_room