execute unless score #sealed_room_chest_7 Search matches 1 run scoreboard players reset #sealed_room_chest_7 Searching
scoreboard players reset #sealed_room_chest_7 Search
execute if score #sealed_room_chest_7 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search_chest_7
execute unless block 691 112 -38 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search_chest_7
execute unless block 692 112 -38 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search_chest_7