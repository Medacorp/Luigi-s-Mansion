execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.ghost_coin
execute if score #temp Time matches 1.. unless entity @a[tag=portrait_battle,limit=1] run function luigis_beta_mansion:entities/ghost/drop_loot/loop/ghost_coin
scoreboard players reset #temp Time