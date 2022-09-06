execute unless score #sealed_room_chest_9 Search matches 1 run scoreboard players reset #sealed_room_chest_9 Searching
scoreboard players reset #sealed_room_chest_9 Search
execute if score #sealed_room_chest_9 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/sealed_room/search/chest_9
scoreboard players operation #temp Searching = #sealed_room_chest_9 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 706 23 -85 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 706 23 -85 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion_3ds_remake:room/hidden/sealed_room/search/chest_9