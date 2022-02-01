execute unless score #sitting_room_painting_1 Search matches 1 run scoreboard players reset #sitting_room_painting_1 Searching
scoreboard players reset #sitting_room_painting_1 Search
execute if score #sitting_room_painting_1 Searching matches 20 run function luigis_mansion:room/normal/sitting_room/search/painting_1
scoreboard players operation #temp Searching = #sitting_room_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 22 -22.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching