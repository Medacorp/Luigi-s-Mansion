execute unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_letter:1b} unless entity @e[type=minecraft:armor_stand,tag=mario_item,tag=letter,limit=1] run scoreboard players set #temp Searched 1
execute if score #temp Searched matches 1 run data modify storage luigis_mansion:data entity set value {room:49}
execute if score #temp Searched matches 1 run function luigis_mansion:spawn_entities/item/marios_letter
execute unless score #temp Searched matches 1 run tag @e[tag=selected] add nothing
scoreboard players reset #temp Searched
