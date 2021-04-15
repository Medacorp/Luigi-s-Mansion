execute unless score #sealed_room_chest_4 Search matches 1 run scoreboard players reset #sealed_room_chest_4 Searching
scoreboard players reset #sealed_room_chest_4 Search
execute if score #sealed_room_chest_4 Searching matches 20 run function luigis_mansion:room/hidden/sealed_room/search_chest_4
execute unless block 684 112 40 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search_chest_4
execute unless block 684 112 41 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search_chest_4