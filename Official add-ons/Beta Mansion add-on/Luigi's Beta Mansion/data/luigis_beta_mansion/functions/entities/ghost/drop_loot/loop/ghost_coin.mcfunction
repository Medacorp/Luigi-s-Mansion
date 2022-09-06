function luigis_beta_mansion:spawn_entities/item/ghost_coin
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. run function luigis_beta_mansion:entities/ghost/drop_loot/loop/ghost_coin