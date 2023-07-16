execute unless score #cellar_box_1 Search matches 1 run scoreboard players reset #cellar_box_1 Searching
scoreboard players reset #cellar_box_1 Search
execute if score #cellar_box_1 Searching matches 20 run function luigis_mansion:room/normal/cellar/search/boo_check/box_1
scoreboard players operation #temp Searching = #cellar_box_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738.0 3 -44.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching