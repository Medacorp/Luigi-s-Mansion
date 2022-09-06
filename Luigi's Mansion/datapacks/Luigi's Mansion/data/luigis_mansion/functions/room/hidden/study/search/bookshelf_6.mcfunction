execute positioned 702 23 -29 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_6 Searched 1
execute if entity @s[tag=interact,tag=manual] unless entity @a[tag=lydias_child_care_diary,limit=1] run tag @a[tag=searcher,scores={Dialog=0},limit=1] add lydias_child_care_diary