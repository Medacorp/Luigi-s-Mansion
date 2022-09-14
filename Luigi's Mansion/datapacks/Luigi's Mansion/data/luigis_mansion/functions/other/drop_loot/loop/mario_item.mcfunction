data modify storage luigis_mansion:data mario_item set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0]
data modify storage luigis_mansion:data mario_item set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0].variant
execute if data storage luigis_mansion:data {mario_item:"hat"} unless entity @e[tag=mario_item,tag=hat,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_hat:1b} run function luigis_mansion:spawn_entities/item/marios_hat
execute if data storage luigis_mansion:data {mario_item:"letter"} unless entity @e[tag=mario_item,tag=letter,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_letter:1b} run function luigis_mansion:spawn_entities/item/marios_letter
execute if data storage luigis_mansion:data {mario_item:"star"} unless entity @e[tag=mario_item,tag=star,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_star:1b} run function luigis_mansion:spawn_entities/item/marios_star
execute if data storage luigis_mansion:data {mario_item:"glove"} unless entity @e[tag=mario_item,tag=glove,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_glove:1b} run function luigis_mansion:spawn_entities/item/marios_glove
execute if data storage luigis_mansion:data {mario_item:"shoe"} unless entity @e[tag=mario_item,tag=shoe,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_shoe:1b} run function luigis_mansion:spawn_entities/item/marios_shoe
data remove storage luigis_mansion:data mario_item
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0].rotation run tag @e[tag=this_entity,limit=1] add rotated
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0].rotation run data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0].rotation
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.mario_item[0] run function luigis_mansion:other/drop_loot/loop/mario_item
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/mario_item