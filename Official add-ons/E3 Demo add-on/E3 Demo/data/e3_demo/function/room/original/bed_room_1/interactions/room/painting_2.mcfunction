execute unless score #bed_room_1_painting_2 Search matches 1 run scoreboard players reset #bed_room_1_painting_2 Searching
scoreboard players reset #bed_room_1_painting_2 Search
execute if score #bed_room_1_painting_2 Searching matches 20 run function e3_demo:room/original/bed_room_1/search/painting_2
scoreboard players operation #temp Searching = #bed_room_1_painting_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 112 55 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching