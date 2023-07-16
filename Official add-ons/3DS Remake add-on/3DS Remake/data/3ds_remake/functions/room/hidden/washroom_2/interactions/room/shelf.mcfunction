execute unless score #washroom_2_shelf Search matches 1 run scoreboard players reset #washroom_2_shelf Searching
scoreboard players reset #washroom_2_shelf Search
execute if score #washroom_2_shelf Searching matches 20 run function 3ds_remake:room/hidden/washroom_2/search/boo_check/shelf
scoreboard players operation #temp Searching = #washroom_2_shelf Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 23 43 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching