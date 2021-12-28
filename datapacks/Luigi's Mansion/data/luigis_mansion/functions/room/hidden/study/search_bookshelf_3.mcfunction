execute positioned 702 23 -36 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_3 Searched 1
execute positioned 702 21 -36 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=darkness_is_their_cheese,limit=1] run tag @a[tag=!spectator,scores={Room=8,Dialog=0},sort=nearest,limit=1] add darkness_is_their_cheese
data merge block 702 21 -36 {LootTable:"luigis_mansion:search"}