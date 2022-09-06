execute unless score #sealed_room_painting_3 Search matches 1 run scoreboard players reset #sealed_room_painting_3 Searching
scoreboard players reset #sealed_room_painting_3 Search
execute if score #sealed_room_painting_3 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/sealed_room/search/painting_3
scoreboard players operation #temp Searching = #sealed_room_painting_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 23 -71 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching