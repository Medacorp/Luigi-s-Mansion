execute unless score #parlor_painting_3 Search matches 1 run scoreboard players reset #parlor_painting_3 Searching
scoreboard players reset #parlor_painting_3 Search
execute if score #parlor_painting_3 Searching matches 20 run function luigis_mansion:room/normal/parlor/search/painting_3
scoreboard players operation #temp Searching = #parlor_painting_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 727 22 33 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching