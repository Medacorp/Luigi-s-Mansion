execute unless score #study_bookshelf_6 Search matches 1 run scoreboard players reset #study_bookshelf_6 Searching
scoreboard players reset #study_bookshelf_6 Search
execute if score #study_bookshelf_6 Searching matches 20 run function luigis_mansion:room/normal/study/search_bookshelf_6
execute unless block 702 21 44 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/study/search_bookshelf_6