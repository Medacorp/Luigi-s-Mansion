execute unless score #master_bedroom_table_2 Search matches 1 run scoreboard players reset #master_bedroom_table_2 Searching
scoreboard players reset #master_bedroom_table_2 Search
execute if score #master_bedroom_table_2 Searching matches 20 run function luigis_mansion:room/hidden/master_bedroom/search/boo_check/table_2
scoreboard players operation #temp Searching = #master_bedroom_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 696.0 111 -24 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching