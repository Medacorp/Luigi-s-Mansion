execute unless score #parlor_painting_7 Search matches 1 run scoreboard players reset #parlor_painting_7 Searching
scoreboard players reset #parlor_painting_7 Search
execute if score #parlor_painting_7 Searching matches 20 run function 3ds_remake:room/hidden/parlor/search/boo_check/painting_7
scoreboard players operation #temp Searching = #parlor_painting_7 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 724 21 19 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching