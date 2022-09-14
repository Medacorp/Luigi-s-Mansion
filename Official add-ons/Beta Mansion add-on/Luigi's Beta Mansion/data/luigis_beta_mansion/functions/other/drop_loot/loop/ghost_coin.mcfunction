function luigis_beta_mansion:spawn_entities/item/ghost_coin
execute if data storage luigis_beta_mansion:data drop_loot.contents.luigis_beta_mansion.ghost_coin[0].rotation run tag @e[tag=this_entity,limit=1] add rotated
execute if data storage luigis_beta_mansion:data drop_loot.contents.luigis_beta_mansion.ghost_coin[0].rotation run data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_beta_mansion:data drop_loot.contents.luigis_beta_mansion.ghost_coin[0].rotation
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_beta_mansion:data drop_loot.contents.luigis_beta_mansion.ghost_coin[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_beta_mansion:data drop_loot.contents.luigis_beta_mansion.ghost_coin[0] run function luigis_beta_mansion:other/drop_loot/loop/ghost_coin
execute if score #temp Time matches 1.. run function luigis_beta_mansion:other/drop_loot/loop/ghost_coin