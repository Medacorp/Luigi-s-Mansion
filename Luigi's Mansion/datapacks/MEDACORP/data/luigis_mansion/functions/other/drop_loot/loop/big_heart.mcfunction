data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.big_heart[0]
function luigis_mansion:spawn_entities/item/big_heart
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.big_heart[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.big_heart[0] run function luigis_mansion:other/drop_loot/loop/big_heart
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/big_heart