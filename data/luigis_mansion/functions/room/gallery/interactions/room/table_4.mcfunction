execute unless score #gallery_table_4 Search matches 1 run scoreboard players reset #gallery_table_4 Searching
scoreboard players reset #gallery_table_4 Search
execute if score #gallery_table_4 Searching matches 20 run function luigis_mansion:room/gallery/search_table_4
execute unless block 737 77 -36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/gallery/search_table_4
execute unless block 738 77 -36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/gallery/search_table_4