execute unless score #study_bookshelf_4 Search matches 1 run scoreboard players reset #study_bookshelf_4 Searching
scoreboard players reset #study_bookshelf_4 Search
execute if score #study_bookshelf_4 Searching matches 20 run function luigis_mansion:room/normal/study/search_bookshelf_4
execute unless block 702 21 48 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/study/search_bookshelf_4
execute unless block 702 21 49 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/study/search_bookshelf_4