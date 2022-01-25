execute unless score #study_bookshelf_2 Search matches 1 run scoreboard players reset #study_bookshelf_2 Searching
scoreboard players reset #study_bookshelf_2 Search
execute if score #study_bookshelf_2 Searching matches 20 run function luigis_mansion:room/normal/study/search/bookshelf_2
execute unless block 702 21 57 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/study/search/bookshelf_2
execute unless block 702 21 58 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/study/search/bookshelf_2