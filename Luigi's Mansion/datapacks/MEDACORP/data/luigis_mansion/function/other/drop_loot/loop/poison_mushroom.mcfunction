data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.poison_mushroom[0]
function luigis_mansion:spawn_entities/item/poison_mushroom
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.poison_mushroom[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.poison_mushroom[0] run function luigis_mansion:other/drop_loot/loop/poison_mushroom
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/poison_mushroom