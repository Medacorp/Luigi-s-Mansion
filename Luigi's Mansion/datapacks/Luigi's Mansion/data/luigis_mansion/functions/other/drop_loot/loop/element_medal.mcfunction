data modify storage luigis_mansion:data element_medal set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.element_medal[0]
data modify storage luigis_mansion:data element_medal set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.element_medal[0].variant
execute if data storage luigis_mansion:data {element_medal:"fire"} unless entity @e[tag=fire_element_medal,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_items{fire_element_medal:1b} run function luigis_mansion:spawn_entities/item/fire_element_medal
execute if data storage luigis_mansion:data {element_medal:"water"} unless entity @e[tag=water_element_medal,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_items{water_element_medal:1b} run function luigis_mansion:spawn_entities/item/water_element_medal
execute if data storage luigis_mansion:data {element_medal:"ice"} unless entity @e[tag=ice_element_medal,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_items{ice_element_medal:1b} run function luigis_mansion:spawn_entities/item/ice_element_medal
data remove storage luigis_mansion:data element_medal
execute unless entity @e[tag=this_entity,limit=1] if score #debug_messages Selected matches 1 run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.loot_spawn_fail.element_medal","color":"red"}]}
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.element_medal[0].rotation run tag @e[tag=this_entity,limit=1] add rotated
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.element_medal[0].rotation run data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.element_medal[0].rotation
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.element_medal[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.element_medal[0] run function luigis_mansion:other/drop_loot/loop/element_medal
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/element_medal