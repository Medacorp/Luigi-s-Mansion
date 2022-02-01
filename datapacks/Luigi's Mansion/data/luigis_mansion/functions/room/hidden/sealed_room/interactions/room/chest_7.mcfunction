execute unless score #sealed_room_chest_7 Search matches 1 run scoreboard players reset #sealed_room_chest_7 Searching
scoreboard players reset #sealed_room_chest_7 Search
execute if score #sealed_room_chest_7 Searching matches 20 run function luigis_mansion:room/hidden/sealed_room/search/chest_7
scoreboard players operation #temp Searching = #sealed_room_chest_7 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 703.0 21 99 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 702 21 99 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search/chest_7
execute unless block 703 21 99 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search/chest_7