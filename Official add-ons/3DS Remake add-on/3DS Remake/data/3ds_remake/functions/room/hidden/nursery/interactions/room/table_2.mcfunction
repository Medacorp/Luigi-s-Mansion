execute unless score #nursery_table_2 Search matches 1 run scoreboard players reset #nursery_table_2 Searching
scoreboard players reset #nursery_table_2 Search
execute if score #nursery_table_2 Searching matches 20 run function 3ds_remake:room/hidden/nursery/search/boo_check/table_2
scoreboard players operation #temp Searching = #nursery_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 739 20 56.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching