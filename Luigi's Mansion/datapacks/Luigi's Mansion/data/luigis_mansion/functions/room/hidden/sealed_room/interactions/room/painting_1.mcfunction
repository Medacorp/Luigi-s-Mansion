execute unless score #sealed_room_painting_1 Search matches 1 run scoreboard players reset #sealed_room_painting_1 Searching
scoreboard players reset #sealed_room_painting_1 Search
execute if score #sealed_room_painting_1 Searching matches 20 run function luigis_mansion:room/hidden/sealed_room/search/painting_1
scoreboard players operation #temp Searching = #sealed_room_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 24 78 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching