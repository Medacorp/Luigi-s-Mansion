execute unless score #parlor_painting_4 Search matches 1 run scoreboard players reset #parlor_painting_4 Searching
scoreboard players reset #parlor_painting_4 Search
execute if score #parlor_painting_4 Searching matches 20 run function luigis_mansion:room/hidden/parlor/search/boo_check/painting_4
scoreboard players operation #temp Searching = #parlor_painting_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 21 -12.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching