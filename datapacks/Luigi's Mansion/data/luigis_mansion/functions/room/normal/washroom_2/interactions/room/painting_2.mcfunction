execute unless score #washroom_2_painting_2 Search matches 1 run scoreboard players reset #washroom_2_painting_2 Searching
scoreboard players reset #washroom_2_painting_2 Search
execute if score #washroom_2_painting_2 Searching matches 20 run function luigis_mansion:room/normal/washroom_2/search/boo_check/painting_2
scoreboard players operation #temp Searching = #washroom_2_painting_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 666 23 42 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching