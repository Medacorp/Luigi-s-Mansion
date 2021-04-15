execute unless data storage luigis_mansion:data current_state.current_data.technical_data{has_marios_glove:1b} unless entity @e[type=minecraft:armor_stand,tag=marios_item,tag=glove,limit=1] run scoreboard players set #temp Searched 1
execute if score #temp Searched matches 1 positioned 679 103 9 run function luigis_mansion:spawn_entities/item/marios_glove
execute unless score #temp Searched matches 1 run tag @e[tag=selected] add nothing
scoreboard players reset #temp Searched