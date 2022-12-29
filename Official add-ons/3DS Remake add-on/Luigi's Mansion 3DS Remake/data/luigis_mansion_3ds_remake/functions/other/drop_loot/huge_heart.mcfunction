execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.contents.luigis_mansion_3ds_remake.huge_heart
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion_3ds_remake.huge_heart run tag @s add dont_drop_heart
execute if score #temp Time matches 1.. run function luigis_mansion_3ds_remake:other/drop_loot/loop/huge_heart
scoreboard players reset #temp Time