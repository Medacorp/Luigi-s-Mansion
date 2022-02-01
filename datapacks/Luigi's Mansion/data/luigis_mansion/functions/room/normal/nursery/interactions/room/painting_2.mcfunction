execute unless score #nursery_painting_2 Search matches 1 run scoreboard players reset #nursery_painting_2 Searching
scoreboard players reset #nursery_painting_2 Search
execute if score #nursery_painting_2 Searching matches 20 run function luigis_mansion:room/normal/nursery/search/painting_2
scoreboard players operation #temp Searching = #nursery_painting_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 743 23 55 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching