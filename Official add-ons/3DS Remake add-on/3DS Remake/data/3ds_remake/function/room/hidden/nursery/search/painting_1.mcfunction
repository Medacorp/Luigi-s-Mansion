execute unless score #nursery_painting_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:10,tags:["drop_loot"]}
execute unless score #nursery_painting_1 Searched matches 1 as @a if score #nursery_painting_1 SearcherID = @s ID run tag @s add searcher
execute unless score #nursery_painting_1 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_2
execute unless score #nursery_painting_1 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 739 21 61 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 739 21 61 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #nursery_painting_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=739.5,y=21,z=61.5,distance=..0.7,tag=ghost,tag=hidden] add spawn