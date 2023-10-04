function luigis_mansion:spawn_entities/item/blue_sapphire
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.blue_sapphire[0].rotation run data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.blue_sapphire[0].rotation
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.blue_sapphire[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.blue_sapphire[0] run function luigis_mansion:other/drop_loot/loop/blue_sapphire
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/blue_sapphire