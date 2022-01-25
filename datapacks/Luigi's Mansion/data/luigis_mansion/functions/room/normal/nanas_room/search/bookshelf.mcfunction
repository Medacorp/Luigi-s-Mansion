execute positioned 654 20 -15 run function luigis_mansion:blocks/dust
scoreboard players set #nanas_room_bookshelf Searched 1
execute if entity @s[tag=interact,tag=manual] unless entity @a[tag=moldy_old_journal,limit=1] run tag @a[tag=searcher,scores={Dialog=0},limit=1] add moldy_old_journal
data merge block 654 20 -15 {LootTable:"luigis_mansion:search"}