execute unless score #anteroom_table_2 Search matches 1 run scoreboard players reset #anteroom_table_2 Searching
scoreboard players reset #anteroom_table_2 Search
execute if score #anteroom_table_2 Searching matches 20 run function luigis_mansion:room/normal/anteroom/search/boo_check/table_2
scoreboard players operation #temp Searching = #anteroom_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 685 21 33.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 685 21 33 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/anteroom/search/boo_check/table_2
execute unless block 685 21 32 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/anteroom/search/boo_check/table_2