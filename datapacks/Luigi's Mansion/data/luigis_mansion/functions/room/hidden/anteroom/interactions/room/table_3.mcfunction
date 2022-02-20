execute unless score #anteroom_table_3 Search matches 1 run scoreboard players reset #anteroom_table_3 Searching
scoreboard players reset #anteroom_table_3 Search
execute if score #anteroom_table_3 Searching matches 20 run function luigis_mansion:room/hidden/anteroom/search/boo_check/table_3
scoreboard players operation #temp Searching = #anteroom_table_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 685 21 -9.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching