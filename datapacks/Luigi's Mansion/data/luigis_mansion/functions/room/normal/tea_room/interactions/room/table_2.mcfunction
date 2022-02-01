execute unless score #tea_room_table_2 Search matches 1 run scoreboard players reset #tea_room_table_2 Searching
scoreboard players reset #tea_room_table_2 Search
execute if score #tea_room_table_2 Searching matches 20 run function luigis_mansion:room/normal/tea_room/search/table_2_vacuum
scoreboard players operation #temp Searching = #tea_room_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 643 20 -52 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching