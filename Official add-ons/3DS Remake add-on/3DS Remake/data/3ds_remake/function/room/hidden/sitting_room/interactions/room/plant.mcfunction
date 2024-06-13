execute unless score #sitting_room_plant Search matches 1 run scoreboard players reset #sitting_room_plant Searching
scoreboard players reset #sitting_room_plant Search
execute if score #sitting_room_plant Searching matches 20 run function 3ds_remake:room/hidden/sitting_room/search/plant
scoreboard players operation #temp Searching = #sitting_room_plant Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 737 20 -21 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching