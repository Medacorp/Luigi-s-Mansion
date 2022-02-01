execute unless score #safari_room_crate_4 Search matches 1 run scoreboard players reset #safari_room_crate_4 Searching
scoreboard players reset #safari_room_crate_4 Search
execute if score #safari_room_crate_4 Searching matches 20 run function luigis_mansion:room/hidden/safari_room/search/crate_4
scoreboard players operation #temp Searching = #safari_room_crate_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 737.0 31 69.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching