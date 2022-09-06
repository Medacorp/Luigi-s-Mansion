execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.contents.luigis_mansion.gold_bar
execute if score #temp Time matches 1.. unless entity @a[tag=portait_battle,limit=1] run function luigis_mansion:other/drop_loot/loop/gold_bar
scoreboard players reset #temp Time