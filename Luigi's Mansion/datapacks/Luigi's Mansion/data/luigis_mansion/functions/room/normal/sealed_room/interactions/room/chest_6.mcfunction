execute unless score #sealed_room_chest_6 Search matches 1 run scoreboard players reset #sealed_room_chest_6 Searching
scoreboard players reset #sealed_room_chest_6 Search
execute if score #sealed_room_chest_6 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search/chest_6
scoreboard players operation #temp Searching = #sealed_room_chest_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 708.0 20 -80 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 707 20 -80 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search/chest_6
execute unless block 708 20 -80 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search/chest_6