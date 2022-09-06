execute unless score #safari_room_crate_6 Search matches 1 run scoreboard players reset #safari_room_crate_6 Searching
scoreboard players reset #safari_room_crate_6 Search
execute if score #safari_room_crate_6 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/safari_room/search/boo_check/crate_6
scoreboard players operation #temp Searching = #safari_room_crate_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 737.0 29 -55.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching