execute unless score #sitting_room_lamp Search matches 1 run scoreboard players reset #sitting_room_lamp Searching
scoreboard players reset #sitting_room_lamp Search
execute if score #sitting_room_lamp Searching matches 20 run function luigis_mansion:room/normal/sitting_room/search/lamp
scoreboard players operation #temp Searching = #sitting_room_lamp Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 741 25 -29 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching