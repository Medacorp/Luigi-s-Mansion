function luigis_mansion:spawn_entities/item/gold_diamond
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. run function luigis_mansion:entities/ghost/drop_loot/loop/gold_diamond