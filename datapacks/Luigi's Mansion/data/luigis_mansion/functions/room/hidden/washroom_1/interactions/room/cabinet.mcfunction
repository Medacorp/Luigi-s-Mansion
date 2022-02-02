execute unless score #washroom_1_cabinet Search matches 1 run scoreboard players reset #washroom_1_cabinet Searching
scoreboard players reset #washroom_1_cabinet Search
execute if score #washroom_1_cabinet Searching matches 20 run function luigis_mansion:room/hidden/washroom_1/search/boo_check/cabinet
scoreboard players operation #temp Searching = #washroom_1_cabinet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 14 -21.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 662 14 -21 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/washroom_1/search/boo_check/cabinet
execute unless block 662 14 -22 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/washroom_1/search/boo_check/cabinet