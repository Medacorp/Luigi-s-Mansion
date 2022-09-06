execute unless score #dining_room_painting_1 Search matches 1 run scoreboard players reset #dining_room_painting_1 Searching
scoreboard players reset #dining_room_painting_1 Search
execute if score #dining_room_painting_1 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/dining_room/search/boo_check/painting_1
scoreboard players operation #temp Searching = #dining_room_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 709 14 52 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching