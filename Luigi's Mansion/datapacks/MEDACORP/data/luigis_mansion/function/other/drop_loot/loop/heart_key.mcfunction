data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.heart_key[0]
function luigis_mansion:spawn_entities/item/heart_key with storage luigis_mansion:data entity
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.heart_key[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.heart_key[0] run function luigis_mansion:other/drop_loot/loop/heart_key
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/heart_key