execute unless data storage luigis_mansion:data current_state.current_data.technical_data{has_marios_shoe:1b} unless entity @e[type=minecraft:armor_stand,tag=marios_item,tag=shoe,limit=1] run scoreboard players set #temp Searched 1
execute if score #temp Searched matches 1 positioned 709 112 28 run function luigis_mansion:spawn_entities/item/marios_shoe
execute unless score #temp Searched matches 1 run tag @e[tag=selected] add nothing
scoreboard players reset #temp Searched