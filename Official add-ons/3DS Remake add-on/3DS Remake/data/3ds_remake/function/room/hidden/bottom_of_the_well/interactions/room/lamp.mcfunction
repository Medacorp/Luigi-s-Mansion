execute unless score #bottom_of_the_well_lamp Search matches 1 run scoreboard players reset #bottom_of_the_well_lamp Searching
scoreboard players reset #bottom_of_the_well_lamp Search
execute if score #bottom_of_the_well_lamp Searching matches 20 run function 3ds_remake:room/hidden/bottom_of_the_well/search/lamp
scoreboard players operation #temp Searching = #bottom_of_the_well_lamp Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 649 93 -2 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching