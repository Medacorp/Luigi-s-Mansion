execute unless score #clockwork_room_table_3 Search matches 1 run scoreboard players reset #clockwork_room_table_3 Searching
scoreboard players reset #clockwork_room_table_3 Search
execute if score #clockwork_room_table_3 Searching matches 20 run function luigis_mansion:room/normal/clockwork_room/search/table_3
scoreboard players operation #temp Searching = #clockwork_room_table_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 694.0 120 -2.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching