execute unless score #living_room_table_3 Search matches 1 run scoreboard players reset #living_room_table_3 Searching
scoreboard players reset #living_room_table_3 Search
execute if score #living_room_table_3 Searching matches 20 run function e3_demo:room/original/living_room/search/table_3
scoreboard players operation #temp Searching = #living_room_table_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 921.0 20 23 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching