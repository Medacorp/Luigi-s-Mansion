execute unless score #bathroom_1_mirror Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:43,tags:["drop_loot"]}
execute unless score #bathroom_1_mirror Searched matches 1 as @e[tag=luigi] if score #bathroom_1_mirror SearcherID = @s ID run tag @s add searcher
execute unless score #bathroom_1_mirror Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p50
execute unless score #bathroom_1_mirror Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 651.0 21 18 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 648.0 21 18 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 651.0 21 18 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #bathroom_1_mirror Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=651.5,y=20,z=18.5,distance=..0.7,tag=ghost,tag=hidden] add spawn