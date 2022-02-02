execute unless score #parlor_table_1 Search matches 1 run scoreboard players reset #parlor_table_1 Searching
scoreboard players reset #parlor_table_1 Search
execute if score #parlor_table_1 Searching matches 20 run function luigis_mansion:room/normal/parlor/search/boo_check/table_1
scoreboard players operation #temp Searching = #parlor_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 721.0 20 33.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching