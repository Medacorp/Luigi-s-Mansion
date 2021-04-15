execute unless score #washroom_1_toilet Search matches 1 run scoreboard players reset #washroom_1_toilet Searching
scoreboard players reset #washroom_1_toilet Search
execute if score #washroom_1_toilet Searching matches 20 run function luigis_mansion:room/hidden/washroom_1/search_toilet
execute unless block 668 102 -19 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/washroom_1/search_toilet