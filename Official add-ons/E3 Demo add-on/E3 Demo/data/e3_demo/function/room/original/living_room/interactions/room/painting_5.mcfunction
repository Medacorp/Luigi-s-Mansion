execute unless score #living_room_painting_5 Search matches 1 run scoreboard players reset #living_room_painting_5 Searching
scoreboard players reset #living_room_painting_5 Search
execute if score #living_room_painting_5 Searching matches 20 run function e3_demo:room/original/living_room/search/painting_5
scoreboard players operation #temp Searching = #living_room_painting_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 727 22 22 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching