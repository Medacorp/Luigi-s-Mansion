execute unless score #sealed_room_chest_9 Search matches 1 run scoreboard players reset #sealed_room_chest_9 Searching
scoreboard players reset #sealed_room_chest_9 Search
execute if score #sealed_room_chest_9 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search_chest_9
execute unless block 695 114 -39 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search_chest_9