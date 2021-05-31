execute unless score #washroom_1_sink Search matches 1 run scoreboard players reset #washroom_1_sink Searching
scoreboard players reset #washroom_1_sink Search
execute if score #washroom_1_sink Searching matches 20 run function luigis_mansion:room/normal/washroom_1/search_sink
execute unless block 662 11 40 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/washroom_1/search_sink