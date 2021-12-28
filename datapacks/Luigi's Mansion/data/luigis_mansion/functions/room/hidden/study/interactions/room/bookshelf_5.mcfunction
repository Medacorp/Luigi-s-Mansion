execute unless score #study_bookshelf_5 Search matches 1 run scoreboard players reset #study_bookshelf_5 Searching
scoreboard players reset #study_bookshelf_5 Search
execute if score #study_bookshelf_5 Searching matches 20 run function luigis_mansion:room/hidden/study/search_bookshelf_5
execute unless block 702 21 -31 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/study/search_bookshelf_5