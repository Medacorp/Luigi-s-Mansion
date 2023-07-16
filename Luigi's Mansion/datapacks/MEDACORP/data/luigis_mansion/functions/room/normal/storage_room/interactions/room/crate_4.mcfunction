execute unless score #storage_room_crate_4 Search matches 1 run scoreboard players reset #storage_room_crate_4 Searching
scoreboard players reset #storage_room_crate_4 Search
execute if score #storage_room_crate_4 Searching matches 20 run function luigis_mansion:room/normal/storage_room/search/boo_check/crate_4
scoreboard players operation #temp Searching = #storage_room_crate_4Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 681.0 11 -66.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching