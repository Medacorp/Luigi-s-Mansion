execute unless score #childs_room_table_1 Search matches 1 run scoreboard players reset #childs_room_table_1 Searching
scoreboard players reset #childs_room_table_1 Search
execute if score #childs_room_table_1 Searching matches 20 run function luigis_beta_mansion:room/original/childs_room/search/table_1
scoreboard players operation #temp Searching = #childs_room_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 747 20 59 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching