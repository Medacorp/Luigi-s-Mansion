data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.green_emerald[0]
function luigis_mansion:spawn_entities/item/green_emerald
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.green_emerald[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.green_emerald[0] run function luigis_mansion:other/drop_loot/loop/green_emerald
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/green_emerald