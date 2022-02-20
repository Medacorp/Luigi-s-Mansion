execute unless score #parlor_table_4 Search matches 1 run scoreboard players reset #parlor_table_4 Searching
scoreboard players reset #parlor_table_4 Search
execute if score #parlor_table_4 Searching matches 20 run function luigis_mansion:room/hidden/parlor/search/boo_check/table_4
scoreboard players operation #temp Searching = #parlor_table_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 727 21 -4 run function luigis_mansion:blocks/search_sound/wood
scoreboard players reset #temp Searching