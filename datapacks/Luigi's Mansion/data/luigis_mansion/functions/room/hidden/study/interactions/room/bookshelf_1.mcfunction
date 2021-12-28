execute unless score #study_bookshelf_1 Search matches 1 run scoreboard players reset #study_bookshelf_1 Searching
scoreboard players reset #study_bookshelf_1 Search
execute if score #study_bookshelf_1 Searching matches 20 run function luigis_mansion:room/hidden/study/search_bookshelf_1
execute unless block 702 21 -45 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/study/search_bookshelf_1
execute unless block 702 21 -46 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/study/search_bookshelf_1