execute unless score #sealed_room_chest_4 Search matches 1 run scoreboard players reset #sealed_room_chest_4 Searching
scoreboard players reset #sealed_room_chest_4 Search
execute if score #sealed_room_chest_4 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/sealed_room/search/chest_4
scoreboard players operation #temp Searching = #sealed_room_chest_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 21 -71.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 695 21 -71 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion_3ds_remake:room/hidden/sealed_room/search/chest_4
execute unless block 695 21 -72 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion_3ds_remake:room/hidden/sealed_room/search/chest_4