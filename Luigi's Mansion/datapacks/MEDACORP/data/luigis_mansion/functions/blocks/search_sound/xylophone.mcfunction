execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] if entity @a[tag=searcher,limit=1] run function luigis_mansion:entities/player/memory/get with entity @a[tag=searcher,limit=1]
execute unless entity @s as @a run function luigis_mansion:main/get_same_room
execute unless entity @a[tag=searcher,limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/knock"} if entity @a[tag=searcher,scores={InteractionTime=2},limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/hump"} if entity @a[tag=searcher,scores={InteractionTime=2},limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/bash"} if entity @a[tag=searcher,scores={InteractionTime=2},limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/knock"} if entity @a[tag=searcher,scores={InteractionTime=9},limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/hump"} if entity @a[tag=searcher,scores={InteractionTime=12},limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 1
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"search/bash"} if entity @a[tag=searcher,scores={InteractionTime=9},limit=1] run playsound luigis_mansion:furniture.search.xylophone block @a[tag=same_room] ~ ~ ~ 1 0.9
execute unless entity @s run tag @a[tag=same_room] remove same_room
execute if entity @s[tag=!keep_memory] if entity @a[tag=searcher,limit=1] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] if entity @a[tag=searcher,limit=1] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory