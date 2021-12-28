execute positioned 702 23 46 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_5 Searched 1
execute positioned 702 21 46 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=e_gadds_guide_to_ghosts,limit=1] run tag @a[tag=!spectator,scores={Room=8,Dialog=0},sort=nearest,limit=1] add e_gadds_guide_to_ghosts
data merge block 702 21 46 {LootTable:"luigis_mansion:search"}