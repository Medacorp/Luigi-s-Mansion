execute unless score #sealed_room_chest_3 Search matches 1 run scoreboard players reset #sealed_room_chest_3 Searching
scoreboard players reset #sealed_room_chest_3 Search
execute if score #sealed_room_chest_3 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search/chest_3
execute unless block 704 21 -68 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sealed_room/search/chest_3