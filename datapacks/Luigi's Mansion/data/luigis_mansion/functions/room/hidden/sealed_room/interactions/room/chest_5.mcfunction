execute unless score #sealed_room_chest_5 Search matches 1 run scoreboard players reset #sealed_room_chest_5 Searching
scoreboard players reset #sealed_room_chest_5 Search
execute if score #sealed_room_chest_5 Searching matches 20 run function luigis_mansion:room/hidden/sealed_room/search/chest_5
execute unless block 695 21 92 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search/chest_5
execute unless block 695 21 93 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sealed_room/search/chest_5