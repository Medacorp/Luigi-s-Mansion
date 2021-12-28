execute positioned 702 23 -45.0 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_1 Searched 1
execute positioned 702 21 -46 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=book_of_riddles,limit=1] run tag @a[tag=!spectator,scores={Room=8,Dialog=0},sort=nearest,limit=1] add book_of_riddles
execute positioned 702 21 -45 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=book_of_riddles,limit=1] run tag @a[tag=!spectator,scores={Room=8,Dialog=0},sort=nearest,limit=1] add book_of_riddles
data merge block 702 21 -46 {LootTable:"luigis_mansion:search"}
data merge block 702 21 -45 {LootTable:"luigis_mansion:search"}