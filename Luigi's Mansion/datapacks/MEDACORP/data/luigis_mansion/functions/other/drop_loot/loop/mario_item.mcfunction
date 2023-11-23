data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0]
data modify storage luigis_mansion:data mario_item set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0]
data modify storage luigis_mansion:data mario_item set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0].variant
execute if data storage luigis_mansion:data {mario_item:"hat"} run function luigis_mansion:spawn_entities/item/marios_hat
execute if data storage luigis_mansion:data {mario_item:"letter"} run function luigis_mansion:spawn_entities/item/marios_letter
execute if data storage luigis_mansion:data {mario_item:"star"} run function luigis_mansion:spawn_entities/item/marios_star
execute if data storage luigis_mansion:data {mario_item:"glove"} run function luigis_mansion:spawn_entities/item/marios_glove
execute if data storage luigis_mansion:data {mario_item:"shoe"} run function luigis_mansion:spawn_entities/item/marios_shoe
data remove storage luigis_mansion:data mario_item
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0] run function luigis_mansion:other/drop_loot/loop/mario_item
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/mario_item