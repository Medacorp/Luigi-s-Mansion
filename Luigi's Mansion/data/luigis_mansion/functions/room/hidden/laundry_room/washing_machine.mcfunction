execute unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_hat:1b} unless entity @e[type=minecraft:armor_stand,tag=marios_item,tag=hat,limit=1] run scoreboard players set #temp Searched 1
execute if score #temp Searched matches 1 positioned 715 13 -58 run function luigis_mansion:spawn_entities/item/marios_hat
execute unless score #temp Searched matches 1 run tag @e[tag=selected] add nothing
scoreboard players reset #temp Searched
