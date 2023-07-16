function luigis_mansion:spawn_entities/item/poison_mushroom
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.poison_mushroom[0].rotation run tag @e[tag=this_entity,limit=1] add rotated
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.poison_mushroom[0].rotation run data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.poison_mushroom[0].rotation
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.poison_mushroom[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.poison_mushroom[0] run function luigis_mansion:other/drop_loot/loop/poison_mushroom
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/poison_mushroom