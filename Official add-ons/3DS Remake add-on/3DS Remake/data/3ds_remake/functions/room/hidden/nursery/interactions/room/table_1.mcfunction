execute unless score #nursery_table_1 Search matches 1 run scoreboard players reset #nursery_table_1 Searching
scoreboard players reset #nursery_table_1 Search
execute if score #nursery_table_1 Searching matches 20 run function 3ds_remake:room/hidden/nursery/search/boo_check/table_1
scoreboard players operation #temp Searching = #nursery_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 747 20 59 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching