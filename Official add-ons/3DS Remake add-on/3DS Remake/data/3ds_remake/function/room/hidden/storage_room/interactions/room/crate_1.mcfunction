execute unless score #storage_room_crate_1 Search matches 1 run scoreboard players reset #storage_room_crate_1 Searching
scoreboard players reset #storage_room_crate_1 Search
execute if score #storage_room_crate_1 Searching matches 20 run function 3ds_remake:room/hidden/storage_room/search/boo_check/crate_1
scoreboard players operation #temp Searching = #storage_room_crate_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 682.0 11 -65.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching