execute unless score #washroom_2_toilet Search matches 1 run scoreboard players reset #washroom_2_toilet Searching
scoreboard players reset #washroom_2_toilet Search
execute if score #washroom_2_toilet Searching matches 20 run function 3ds_remake:room/hidden/washroom_2/search/boo_check/toilet
scoreboard players operation #temp Searching = #washroom_2_toilet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 664 20 44 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching
execute unless block 664 20 44 minecraft:dropper{LootTable:"luigis_mansion:search"} run function 3ds_remake:room/hidden/washroom_2/search/boo_check/toilet