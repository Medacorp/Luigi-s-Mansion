execute unless score #back_yard_water_tap Search matches 1 run scoreboard players reset #back_yard_water_tap Searching
scoreboard players reset #back_yard_water_tap Search
execute if score #back_yard_water_tap Searching matches 20 run function luigis_beta_mansion:room/original/back_yard/search/water_tap
scoreboard players operation #temp Searching = #back_yard_water_tap Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 681 102 39 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching