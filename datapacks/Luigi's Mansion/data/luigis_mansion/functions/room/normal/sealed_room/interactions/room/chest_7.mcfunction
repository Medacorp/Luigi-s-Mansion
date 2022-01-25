execute unless score #sealed_room_chest_7 Search matches 1 run scoreboard players reset #sealed_room_chest_7 Searching
scoreboard players reset #sealed_room_chest_7 Search
execute if score #sealed_room_chest_7 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search/chest_7
execute unless block 702 21 -84 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search/chest_7
execute unless block 703 21 -84 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search/chest_7