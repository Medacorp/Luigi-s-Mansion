execute unless score #study_bookshelf_3 Search matches 1 run scoreboard players reset #study_bookshelf_3 Searching
scoreboard players reset #study_bookshelf_3 Search
execute if score #study_bookshelf_3 Searching matches 20 run function luigis_mansion:room/normal/study/search/bookshelf_3
execute unless block 702 21 51 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/study/search/bookshelf_3