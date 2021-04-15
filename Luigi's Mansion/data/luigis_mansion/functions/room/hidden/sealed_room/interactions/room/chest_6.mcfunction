execute unless score #sealed_room_chest_6 Search matches 1 run scoreboard players reset #sealed_room_chest_6 Searching
scoreboard players reset #sealed_room_chest_6 Search
execute if score #sealed_room_chest_6 Searching matches 20 run function luigis_mansion:room/hidden/sealed_room/search_chest_6
execute unless block 696 111 49 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search_chest_6
execute unless block 697 111 49 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search_chest_6