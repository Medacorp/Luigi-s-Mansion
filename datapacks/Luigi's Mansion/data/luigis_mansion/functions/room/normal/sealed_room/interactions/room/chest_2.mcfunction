execute unless score #sealed_room_chest_2 Search matches 1 run scoreboard players reset #sealed_room_chest_2 Searching
scoreboard players reset #sealed_room_chest_2 Search
execute if score #sealed_room_chest_2 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search/chest_2
scoreboard players operation #temp Searching = #sealed_room_chest_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 707 22 -58 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 707 22 -58 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search/chest_2