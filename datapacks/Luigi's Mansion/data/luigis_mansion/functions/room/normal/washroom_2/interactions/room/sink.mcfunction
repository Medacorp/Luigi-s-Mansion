execute unless score #washroom_2_sink Search matches 1 run scoreboard players reset #washroom_2_sink Searching
scoreboard players reset #washroom_2_sink Search
execute if score #washroom_2_sink Searching matches 20 run function luigis_mansion:room/normal/washroom_2/search_sink
execute unless block 662 20 40 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/washroom_2/search_sink