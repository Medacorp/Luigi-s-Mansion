execute unless score #washroom_2_radiator Search matches 1 run scoreboard players reset #washroom_2_radiator Searching
scoreboard players reset #washroom_2_radiator Search
execute if score #washroom_2_radiator Searching matches 20 run function luigis_mansion:room/hidden/washroom_2/search/radiator
scoreboard players operation #temp Searching = #washroom_2_radiator Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 20 -21.0 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching