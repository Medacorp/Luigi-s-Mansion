execute unless score #sitting_room_couch Search matches 1 run scoreboard players reset #sitting_room_couch Searching
scoreboard players reset #sitting_room_couch Search
execute if score #sitting_room_couch Searching matches 20 run function luigis_mansion:room/normal/sitting_room/search/couch
scoreboard players operation #temp Searching = #sitting_room_couch Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738 20 -29.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching