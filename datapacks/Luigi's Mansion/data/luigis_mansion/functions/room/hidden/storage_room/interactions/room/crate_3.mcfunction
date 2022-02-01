execute unless score #storage_room_crate_3 Search matches 1 run scoreboard players reset #storage_room_crate_3 Searching
scoreboard players reset #storage_room_crate_3 Search
execute if score #storage_room_crate_3 Searching matches 20 run function luigis_mansion:room/hidden/storage_room/search/crate_3
scoreboard players operation #temp Searching = #storage_room_crate_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 684.0 11 83.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching