execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.poison_mushroom
execute if score #temp Time matches 1.. run function luigis_mansion:entities/ghost/drop_loot/loop/poison_mushroom
scoreboard players reset #temp Time
tag @s add dont_drop_heart