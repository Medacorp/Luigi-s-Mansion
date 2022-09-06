execute unless score #washroom_2_toilet_paper Search matches 1 run scoreboard players reset #washroom_2_toilet_paper Searching
scoreboard players reset #washroom_2_toilet_paper Search
execute if score #washroom_2_toilet_paper Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/washroom_2/search/boo_check/toilet_paper
scoreboard players operation #temp Searching = #washroom_2_toilet_paper Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 21 44 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching