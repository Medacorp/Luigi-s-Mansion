execute unless score #washroom_2_painting_1 Search matches 1 run scoreboard players reset #washroom_2_painting_1 Searching
scoreboard players reset #washroom_2_painting_1 Search
execute if score #washroom_2_painting_1 Searching matches 20 run function 3ds_remake:room/hidden/washroom_2/search/boo_check/painting_1
scoreboard players operation #temp Searching = #washroom_2_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 23 45 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching