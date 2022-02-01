execute unless score #parlor_painting_6 Search matches 1 run scoreboard players reset #parlor_painting_6 Searching
scoreboard players reset #parlor_painting_6 Search
execute if score #parlor_painting_6 Searching matches 20 run function luigis_mansion:room/hidden/parlor/search/painting_6
scoreboard players operation #temp Searching = #parlor_painting_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 717.0 21 -4 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching