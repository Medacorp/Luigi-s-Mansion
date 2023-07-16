execute positioned 702 23 -33.0 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_4 Searched 1
execute if entity @s[tag=interact,tag=manual] unless entity @a[tag=the_book_of_pericles,limit=1] run tag @a[tag=searcher,scores={Dialog=0},limit=1] add the_book_of_pericles