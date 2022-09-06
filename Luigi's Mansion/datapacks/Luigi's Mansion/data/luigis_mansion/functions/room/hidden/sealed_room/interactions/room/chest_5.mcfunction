execute unless score #sealed_room_chest_5 Search matches 1 run scoreboard players reset #sealed_room_chest_5 Searching
scoreboard players reset #sealed_room_chest_5 Search
execute if score #sealed_room_chest_5 Searching matches 20 run function luigis_mansion:room/hidden/sealed_room/search/chest_5
scoreboard players operation #temp Searching = #sealed_room_chest_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 21 93.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 695 21 92 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search/chest_5
execute unless block 695 21 93 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search/chest_5