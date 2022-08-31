execute store result score #temp Time run data get entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.bill
execute store result entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.bill int 1 run scoreboard players add #temp Time 30
scoreboard players reset #temp Time