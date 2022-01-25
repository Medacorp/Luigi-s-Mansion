execute positioned 702 23 51 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_3 Searched 1
execute if entity @s[tag=interact,tag=manual] unless entity @a[tag=darkness_is_their_cheese,limit=1] run tag @a[tag=searcher,scores={Dialog=0},limit=1] add darkness_is_their_cheese
data merge block 702 21 51 {LootTable:"luigis_mansion:search"}