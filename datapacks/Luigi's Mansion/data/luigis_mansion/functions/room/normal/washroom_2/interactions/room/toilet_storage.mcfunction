execute unless score #washroom_2_toilet_storage Search matches 1 run scoreboard players reset #washroom_2_toilet_storage Searching
scoreboard players reset #washroom_2_toilet_storage Search
execute if score #washroom_2_toilet_storage Searching matches 20 run function luigis_mansion:room/normal/washroom_2/search/boo_check/toilet_storage
scoreboard players operation #temp Searching = #washroom_2_toilet_storage Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 664 23 46 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching