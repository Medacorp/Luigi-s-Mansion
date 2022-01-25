execute positioned 702 23 46 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_5 Searched 1
execute if entity @s[tag=interact,tag=manual] unless entity @a[tag=e_gadds_guide_to_ghosts,limit=1] run tag @a[tag=searcher,scores={Dialog=0},limit=1] add e_gadds_guide_to_ghosts
data merge block 702 21 46 {LootTable:"luigis_mansion:search"}