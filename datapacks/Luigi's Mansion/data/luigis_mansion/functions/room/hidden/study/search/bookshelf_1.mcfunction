execute positioned 702 23 -45.0 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_1 Searched 1
execute if entity @s[tag=interact,tag=manual] unless entity @a[tag=book_of_riddles,limit=1] run tag @a[tag=searcher,scores={Dialog=0},limit=1] add book_of_riddles
data merge block 702 21 -46 {LootTable:"luigis_mansion:search"}
data merge block 702 21 -45 {LootTable:"luigis_mansion:search"}