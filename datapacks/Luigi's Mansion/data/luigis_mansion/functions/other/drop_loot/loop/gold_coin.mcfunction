function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/gold_coin