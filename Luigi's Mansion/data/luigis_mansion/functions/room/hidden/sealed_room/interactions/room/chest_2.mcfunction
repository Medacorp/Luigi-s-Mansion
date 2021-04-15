execute unless score #sealed_room_chest_2 Search matches 1 run scoreboard players reset #sealed_room_chest_2 Searching
scoreboard players reset #sealed_room_chest_2 Search
execute if score #sealed_room_chest_2 Searching matches 20 run function luigis_mansion:room/hidden/sealed_room/search_chest_2
execute unless block 696 113 27 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search_chest_2