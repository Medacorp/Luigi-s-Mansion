execute unless data storage luigis_mansion:data entity.loot run data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.loot
execute unless data storage luigis_mansion:data entity.loot.drop_at_0 run data modify storage luigis_mansion:data entity.loot.drop_at_0 set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.loot.drop_at_0
execute unless data storage luigis_mansion:data entity.loot.drop_at_0.contents run data modify storage luigis_mansion:data entity.loot.drop_at_0.contents set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.loot.drop_at_0.contents
execute unless data storage luigis_mansion:data entity.loot.contents run data modify storage luigis_mansion:data entity.loot.contents set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.speedy_spirit.loot.contents
execute store result score #temp Time run data get storage luigis_mansion:data entity.loot.drop_at_0.contents.luigis_mansion.gold_coin
execute store result storage luigis_mansion:data entity.loot.drop_at_0.contents.luigis_mansion.gold_coin int 1 run scoreboard players add #temp Time 10
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data entity.loot.drop_at_0.contents.luigis_mansion.bill
execute store result storage luigis_mansion:data entity.loot.drop_at_0.contents.luigis_mansion.bill int 1 run scoreboard players add #temp Time 15
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data entity.loot.drop_at_0.contents.luigis_mansion.gold_bar
execute store result storage luigis_mansion:data entity.loot.drop_at_0.contents.luigis_mansion.gold_bar int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data entity.loot.drop_at_0.contents.luigis_mansion.silver_diamond
execute store result storage luigis_mansion:data entity.loot.drop_at_0.contents.luigis_mansion.silver_diamond int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time