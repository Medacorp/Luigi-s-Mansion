execute unless score #telephone_room_chest_3 Search matches 1 run scoreboard players reset #telephone_room_chest_3 Searching
scoreboard players reset #telephone_room_chest_3 Search
execute if score #telephone_room_chest_3 Searching matches 20 run function luigis_mansion:room/normal/telephone_room/search_chest_3
execute unless block 715 120 -6 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/telephone_room/search_chest_3
execute unless block 716 120 -6 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/telephone_room/search_chest_3