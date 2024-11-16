execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.contents.3ds_remake.super_mushroom
execute if score #temp Time matches 1.. run function 3ds_remake:other/drop_loot/loop/super_mushroom
scoreboard players reset #temp Time