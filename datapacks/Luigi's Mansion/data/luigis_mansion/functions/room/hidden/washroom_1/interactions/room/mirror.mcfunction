execute unless score #washroom_1_mirror Search matches 1 run scoreboard players reset #washroom_1_mirror Searching
scoreboard players reset #washroom_1_mirror Search
execute if score #washroom_1_mirror Searching matches 20 run function luigis_mansion:room/hidden/washroom_1/search/mirror
scoreboard players operation #temp Searching = #washroom_1_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 661 12 -25 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching