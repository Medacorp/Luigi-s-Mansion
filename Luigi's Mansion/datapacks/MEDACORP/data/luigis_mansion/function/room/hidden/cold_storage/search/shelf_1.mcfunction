execute unless score #cold_storage_shelf_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:68,tags:["drop_loot"]}
execute unless score #cold_storage_shelf_1 Searched matches 1 as @e[tag=luigi] if score #cold_storage_shelf_1 SearcherID = @s ID run tag @s add searcher
execute unless score #cold_storage_shelf_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p20
execute unless score #cold_storage_shelf_1 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 735 4 5 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 735 4 6 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #cold_storage_shelf_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=735.5,y=4,z=5.5,distance=..0.7,tag=ghost,tag=hidden] add spawn