execute unless score #gallery_table_1 Search matches 1 run scoreboard players reset #gallery_table_1 Searching
scoreboard players reset #gallery_table_1 Search
execute if score #gallery_table_1 Searching matches 20 run function luigis_mansion:room/gallery/search_table_1
execute unless block 737 77 -21 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/gallery/search_table_1
execute unless block 738 77 -21 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/gallery/search_table_1