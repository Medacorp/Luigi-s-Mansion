execute unless score #washroom_2_mirror Search matches 1 run scoreboard players reset #washroom_2_mirror Searching
scoreboard players reset #washroom_2_mirror Search
execute if score #washroom_2_mirror Searching matches 20 run function luigis_mansion:room/normal/washroom_2/search/boo_check/mirror
scoreboard players operation #temp Searching = #washroom_2_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 661 21 40 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching