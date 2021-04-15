execute unless score #observatory_table Search matches 1 run scoreboard players reset #observatory_table Searching
scoreboard players reset #observatory_table Search
execute if score #observatory_table Searching matches 20 run function luigis_mansion:room/normal/observatory/search_table
execute unless block 673 111 -34 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/observatory/search_table
execute unless block 673 111 -33 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/observatory/search_table