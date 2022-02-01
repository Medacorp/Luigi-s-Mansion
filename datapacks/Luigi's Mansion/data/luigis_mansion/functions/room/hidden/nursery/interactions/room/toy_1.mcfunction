execute unless score #nursery_toy_1 Search matches 1 run scoreboard players reset #nursery_toy_1 Searching
scoreboard players reset #nursery_toy_1 Search
execute if score #nursery_toy_1 Searching matches 20 run function luigis_mansion:room/hidden/nursery/search/toy_1
scoreboard players operation #temp Searching = #nursery_toy_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 743 21 -40 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching