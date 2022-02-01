execute unless score #sitting_room_painting_5 Search matches 1 run scoreboard players reset #sitting_room_painting_5 Searching
scoreboard players reset #sitting_room_painting_5 Search
execute if score #sitting_room_painting_5 Searching matches 20 run function luigis_mansion:room/normal/sitting_room/search/painting_5
scoreboard players operation #temp Searching = #sitting_room_painting_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 22 -34 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching