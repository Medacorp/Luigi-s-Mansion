execute if entity @a[tag=searcher,limit=1] run function luigis_mansion:entities/player/memory/get with entity @a[tag=searcher,limit=1]
execute unless entity @a[tag=searcher,limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/knock"} if entity @a[tag=searcher,scores={AnimationProgress=..7},limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/knock"} if entity @a[tag=searcher,scores={AnimationProgress=8..},limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/hump"} run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/bash"} run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if entity @a[tag=searcher,limit=1] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @a[tag=searcher,limit=1] run data remove storage luigis_mansion:data my_memory
scoreboard players set @s Sound 3