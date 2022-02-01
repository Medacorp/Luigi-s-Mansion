execute unless score #sealed_room_painting_7 Search matches 1 run scoreboard players reset #sealed_room_painting_7 Searching
scoreboard players reset #sealed_room_painting_7 Search
execute if score #sealed_room_painting_7 Searching matches 20 run function luigis_mansion:room/hidden/sealed_room/search/painting_7
scoreboard players operation #temp Searching = #sealed_room_painting_7 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 708 23 98 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching