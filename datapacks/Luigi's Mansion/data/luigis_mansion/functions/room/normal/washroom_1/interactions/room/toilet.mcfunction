execute unless score #washroom_1_toilet Search matches 1 run scoreboard players reset #washroom_1_toilet Searching
scoreboard players reset #washroom_1_toilet Search
execute if score #washroom_1_toilet Searching matches 20 run function luigis_mansion:room/normal/washroom_1/search/toilet
execute unless block 664 11 44 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/washroom_1/search/toilet