data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents.3ds_remake.super_mushroom[0]
function 3ds_remake:spawn_entities/item/super_mushroom
data remove storage luigis_mansion:data drop_loot.contents.3ds_remake.super_mushroom[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.3ds_remake.super_mushroom[0] run function 3ds_remake:other/drop_loot/loop/super_mushroom
execute if score #temp Time matches 1.. run function 3ds_remake:other/drop_loot/loop/super_mushroom