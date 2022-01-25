execute unless score #observatory_table Search matches 1 run scoreboard players reset #observatory_table Searching
scoreboard players reset #observatory_table Search
execute if score #observatory_table Searching matches 20 run function luigis_mansion:room/normal/observatory/search/table
execute unless block 641 20 -76 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/observatory/search/table
execute unless block 641 20 -75 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/observatory/search/table