execute unless score #sitting_room_painting_4 Search matches 1 run scoreboard players reset #sitting_room_painting_4 Searching
scoreboard players reset #sitting_room_painting_4 Search
execute if score #sitting_room_painting_4 Searching matches 20 run function luigis_mansion:room/hidden/sitting_room/search/boo_check/painting_4
scoreboard players operation #temp Searching = #sitting_room_painting_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 22 45.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching