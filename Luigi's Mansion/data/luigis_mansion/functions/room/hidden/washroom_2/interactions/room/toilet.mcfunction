execute unless score #washroom_2_toilet Search matches 1 run scoreboard players reset #washroom_2_toilet Searching
scoreboard players reset #washroom_2_toilet Search
execute if score #washroom_2_toilet Searching matches 20 run function luigis_mansion:room/hidden/washroom_2/search_toilet
execute unless block 668 111 -19 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/washroom_2/search_toilet