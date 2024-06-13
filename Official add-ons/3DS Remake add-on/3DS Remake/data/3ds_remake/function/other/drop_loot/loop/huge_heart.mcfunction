data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents.3ds_remake.huge_heart[0]
function 3ds_remake:spawn_entities/item/huge_heart
data remove storage luigis_mansion:data drop_loot.contents.3ds_remake.huge_heart[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.3ds_remake.huge_heart[0] run function 3ds_remake:other/drop_loot/loop/huge_heart
execute if score #temp Time matches 1.. run function 3ds_remake:other/drop_loot/loop/huge_heart