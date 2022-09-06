execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.contents.luigis_mansion.medium_pearl
execute if score #temp Time matches 1.. unless entity @a[tag=portait_battle,limit=1] run function luigis_mansion:other/drop_loot/loop/medium_pearl
scoreboard players reset #temp Time