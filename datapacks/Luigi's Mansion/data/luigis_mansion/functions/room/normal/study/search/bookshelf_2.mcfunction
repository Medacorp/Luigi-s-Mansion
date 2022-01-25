execute positioned 702 23 58.0 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_2 Searched 1
execute if entity @s[tag=interact,tag=manual] unless entity @a[tag=nevilles_big_baby_care_diary,limit=1] run tag @a[tag=searcher,scores={Dialog=0},limit=1] add nevilles_big_baby_care_diary
data merge block 702 21 58 {LootTable:"luigis_mansion:search"}
data merge block 702 21 57 {LootTable:"luigis_mansion:search"}