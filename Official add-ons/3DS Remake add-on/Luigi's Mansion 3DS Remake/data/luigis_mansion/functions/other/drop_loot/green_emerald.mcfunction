execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.contents.luigis_mansion.green_emerald
execute if score #temp Time matches 1.. unless entity @a[tag=portait_battle,limit=1] run function luigis_mansion:other/drop_loot/loop/green_emerald
scoreboard players reset #temp Time