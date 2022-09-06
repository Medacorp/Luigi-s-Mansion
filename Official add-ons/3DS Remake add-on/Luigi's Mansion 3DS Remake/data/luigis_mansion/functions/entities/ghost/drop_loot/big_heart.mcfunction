execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.big_heart
execute if score #temp Time matches 1.. run tag @s add dont_drop_heart
execute if score #temp Time matches 1.. unless entity @a[tag=portait_battle,limit=1] run function luigis_mansion:entities/ghost/drop_loot/loop/big_heart
scoreboard players reset #temp Time