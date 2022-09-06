execute store result score #temp Time run data get entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.blue_sapphire
execute store result entity @s ArmorItems[3].tag.loot.contents.luigis_mansion.blue_sapphire int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time