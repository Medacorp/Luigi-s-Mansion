function luigis_mansion_3ds_remake:spawn_entities/item/huge_heart
execute if data storage luigis_mansion_3ds_remake:data drop_loot.contents.luigis_mansion_3ds_remake.huge_heart[0].rotation run tag @e[tag=this_entity,limit=1] add rotated
execute if data storage luigis_mansion_3ds_remake:data drop_loot.contents.luigis_mansion_3ds_remake.huge_heart[0].rotation run data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_mansion_3ds_remake:data drop_loot.contents.luigis_mansion_3ds_remake.huge_heart[0].rotation
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion_3ds_remake:data drop_loot.contents.luigis_mansion_3ds_remake.huge_heart[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion_3ds_remake:data drop_loot.contents.luigis_mansion_3ds_remake.huge_heart[0] run function luigis_mansion_3ds_remake:other/drop_loot/loop/huge_heart
execute if score #temp Time matches 1.. run function luigis_mansion_3ds_remake:other/drop_loot/loop/huge_heart