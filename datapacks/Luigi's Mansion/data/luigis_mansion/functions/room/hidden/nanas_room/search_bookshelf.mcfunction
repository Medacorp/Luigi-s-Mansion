execute positioned 654 20 30 run function luigis_mansion:blocks/dust
scoreboard players set #nanas_room_bookshelf Searched 1
execute positioned 654 20 30 unless block ~ ~ ~ minecraft:chest{LootTable:"luigis_mansion:search"} unless entity @a[tag=moldy_old_journal,limit=1] run tag @a[tag=!spectator,scores={Room=44,Dialog=0},sort=nearest,limit=1] add moldy_old_journal
data merge block 654 20 30 {LootTable:"luigis_mansion:search"}