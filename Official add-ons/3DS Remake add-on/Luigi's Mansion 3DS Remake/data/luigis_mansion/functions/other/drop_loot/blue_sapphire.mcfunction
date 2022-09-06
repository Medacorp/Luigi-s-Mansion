execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.contents.luigis_mansion.blue_sapphire
execute if score #temp Time matches 1.. unless entity @a[tag=portait_battle,limit=1] run function luigis_mansion:other/drop_loot/loop/blue_sapphire
scoreboard players reset #temp Time