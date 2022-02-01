execute unless score #safari_room_crate_1 Search matches 1 run scoreboard players reset #safari_room_crate_1 Searching
scoreboard players reset #safari_room_crate_1 Search
execute if score #safari_room_crate_1 Searching matches 20 run function luigis_mansion:room/hidden/safari_room/search/crate_1
scoreboard players operation #temp Searching = #safari_room_crate_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 735.0 29 68.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching