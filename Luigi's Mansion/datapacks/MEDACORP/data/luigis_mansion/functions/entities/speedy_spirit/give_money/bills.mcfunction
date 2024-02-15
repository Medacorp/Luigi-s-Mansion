execute unless data storage luigis_mansion:data entity.loot run data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.loot
execute unless data storage luigis_mansion:data entity.loot.contents run data modify storage luigis_mansion:data entity.loot.contents set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.loot.contents
execute store result score #temp Time run data get storage luigis_mansion:data entity.loot.contents.luigis_mansion.bill
execute store result storage luigis_mansion:data entity.loot.contents.luigis_mansion.bill int 1 run scoreboard players add #temp Time 25
scoreboard players reset #temp Time