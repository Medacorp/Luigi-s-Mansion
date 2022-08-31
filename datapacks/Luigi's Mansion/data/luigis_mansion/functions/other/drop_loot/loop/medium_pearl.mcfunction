function luigis_mansion:spawn_entities/item/medium_pearl
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/medium_pearl