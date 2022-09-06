execute unless score #washroom_1_painting_2 Search matches 1 run scoreboard players reset #washroom_1_painting_2 Searching
scoreboard players reset #washroom_1_painting_2 Search
execute if score #washroom_1_painting_2 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/washroom_1/search/boo_check/painting_2
scoreboard players operation #temp Searching = #washroom_1_painting_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 666 14 42 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching