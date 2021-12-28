execute positioned 702 23 -29 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_6 Searched 1
execute positioned 702 21 -29 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=lydias_child_care_diary,limit=1] run tag @a[tag=!spectator,scores={Room=8,Dialog=0},sort=nearest,limit=1] add lydias_child_care_diary
data merge block 702 21 -29 {LootTable:"luigis_mansion:search"}