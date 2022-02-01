execute unless score #observatory_table Search matches 1 run scoreboard players reset #observatory_table Searching
scoreboard players reset #observatory_table Search
execute if score #observatory_table Searching matches 20 run function luigis_mansion:room/hidden/observatory/search/table
scoreboard players operation #temp Searching = #observatory_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 641 20 91.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 641 20 91 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/observatory/search/table
execute unless block 641 20 90 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/observatory/search/table