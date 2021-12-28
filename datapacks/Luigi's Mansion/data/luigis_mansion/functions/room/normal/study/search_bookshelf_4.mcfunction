execute positioned 702 23 49.0 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_4 Searched 1
execute positioned 702 21 49 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=the_book_of_pericles,limit=1] run tag @a[tag=!spectator,scores={Room=8,Dialog=0},sort=nearest,limit=1] add the_book_of_pericles
execute positioned 702 21 48 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=the_book_of_pericles,limit=1] run tag @a[tag=!spectator,scores={Room=8,Dialog=0},sort=nearest,limit=1] add the_book_of_pericles
data merge block 702 21 49 {LootTable:"luigis_mansion:search"}
data merge block 702 21 48 {LootTable:"luigis_mansion:search"}