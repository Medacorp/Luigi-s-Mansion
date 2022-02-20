execute unless score #astral_hall_table_1 Search matches 1 run scoreboard players reset #astral_hall_table_1 Searching
scoreboard players reset #astral_hall_table_1 Search
execute if score #astral_hall_table_1 Searching matches 20 run function luigis_mansion:room/hidden/astral_hall/search/boo_check/table_1
scoreboard players operation #temp Searching = #astral_hall_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 20 90 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching