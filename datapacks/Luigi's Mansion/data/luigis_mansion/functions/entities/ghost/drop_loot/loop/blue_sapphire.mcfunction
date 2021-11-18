function luigis_mansion:spawn_entities/item/blue_sapphire
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. run function luigis_mansion:entities/ghost/drop_loot/loop/blue_sapphire