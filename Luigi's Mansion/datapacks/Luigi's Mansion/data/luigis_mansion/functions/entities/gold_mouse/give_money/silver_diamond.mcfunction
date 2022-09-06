execute store result score #temp Time run data get entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.bill
execute store result entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.bill int 1 run scoreboard players add #temp Time 10
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.gold_bar
execute store result entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.gold_bar int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.silver_diamond
execute store result entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.silver_diamond int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time