execute unless score #sealed_room_chest_8 Search matches 1 run scoreboard players reset #sealed_room_chest_8 Searching
scoreboard players reset #sealed_room_chest_8 Search
execute if score #sealed_room_chest_8 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search_chest_8
execute unless block 687 114 -39 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search_chest_8