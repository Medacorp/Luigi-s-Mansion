execute unless score #master_bedroom_table_1 Search matches 1 run scoreboard players reset #master_bedroom_table_1 Searching
scoreboard players reset #master_bedroom_table_1 Search
execute if score #master_bedroom_table_1 Searching matches 20 run function luigis_mansion:room/normal/master_bedroom/search/boo_check/table_1
scoreboard players operation #temp Searching = #master_bedroom_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 111 55 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 695 111 55 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/master_bedroom/search/boo_check/table_1