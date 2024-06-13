execute unless score #washroom_1_radiator Search matches 1 run scoreboard players reset #washroom_1_radiator Searching
scoreboard players reset #washroom_1_radiator Search
execute if score #washroom_1_radiator Searching matches 20 run function luigis_mansion:room/hidden/washroom_1/search/boo_check/radiator
scoreboard players operation #temp Searching = #washroom_1_radiator Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 11 -21.0 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching