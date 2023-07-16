execute unless entity @s as @a run function #luigis_mansion:get_same_room
execute unless entity @a[tag=searcher,limit=1] run playsound luigis_mansion:furniture.search.cello block @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=searcher,scores={InteractionTime=2,Animation=42},limit=1] run playsound luigis_mansion:furniture.search.cello block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if entity @a[tag=searcher,scores={InteractionTime=2,Animation=43},limit=1] run playsound luigis_mansion:furniture.search.cello block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @a[tag=searcher,scores={InteractionTime=2,Animation=44},limit=1] run playsound luigis_mansion:furniture.search.cello block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if entity @a[tag=searcher,scores={InteractionTime=9,Animation=42},limit=1] run playsound luigis_mansion:furniture.search.cello block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @a[tag=searcher,scores={InteractionTime=12,Animation=43},limit=1] run playsound luigis_mansion:furniture.search.cello block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @a[tag=searcher,scores={InteractionTime=9,Animation=44},limit=1] run playsound luigis_mansion:furniture.search.cello block @a[tag=same_room] ~ ~ ~ 1 0.9
execute unless entity @s run tag @a[tag=same_room] remove same_room