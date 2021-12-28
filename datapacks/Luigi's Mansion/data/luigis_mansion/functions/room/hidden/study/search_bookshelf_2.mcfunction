execute positioned 702 23 -42.0 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_2 Searched 1
execute positioned 702 21 -43 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=nevilles_big_baby_care_diary,limit=1] run tag @a[tag=!spectator,scores={Room=8,Dialog=0},sort=nearest,limit=1] add nevilles_big_baby_care_diary
execute positioned 702 21 -42 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=nevilles_big_baby_care_diary,limit=1] run tag @a[tag=!spectator,scores={Room=8,Dialog=0},sort=nearest,limit=1] add nevilles_big_baby_care_diary
data merge block 702 21 -43 {LootTable:"luigis_mansion:search"}
data merge block 702 21 -42 {LootTable:"luigis_mansion:search"}