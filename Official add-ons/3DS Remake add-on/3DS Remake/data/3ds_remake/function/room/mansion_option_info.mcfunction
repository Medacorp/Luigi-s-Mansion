$execute if data storage luigis_mansion:data current_state.current_data{data_index:$(data_index)} run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data current_state.current_data
$execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:$(data_index)}] run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data current_state.mansion_data[{data_index:$(data_index)}]
data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" set value []
$execute unless data storage luigis_mansion:data temp run function 3ds_remake:room/generate_mansion_data {namespace:"$(namespace)",id:"$(id)"}
execute store result score #area Time run data get storage luigis_mansion:data temp.area
execute store result score #boos Time run data get storage luigis_mansion:data temp.boo_counter
execute store result score #total_boos Time run data get storage luigis_mansion:data temp.max_boo_counter
scoreboard players set #money Time 0
execute if data storage luigis_mansion:data temp.money_grabbed[0] run function 3ds_remake:room/get_money_total
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:[{italic:false,color:"white",type:"translatable",translate:"3ds_remake:item.menu.dialog.underground_lab.mansion.area",with:[{type:"score",score:{name:"#area",objective:"Time"}}]},{italic:false,color:"white",type:"translatable",translate:"3ds_remake:item.menu.dialog.underground_lab.mansion.money",with:[{type:"score",score:{name:"#money",objective:"Time"}}]},{italic:false,color:"white",type:"translatable",translate:"3ds_remake:item.menu.dialog.underground_lab.mansion.boos.max",with:[{type:"score",score:{name:"#boos",objective:"Time"}},{type:"score",score:{name:"#total_boos",objective:"Time"}}]},{italic:false,color:"white",type:"translatable",translate:"3ds_remake:item.menu.dialog.underground_lab.mansion.boos",with:[{type:"score",score:{name:"#boos",objective:"Time"}}]}]}}
execute if score #area Time matches 1.. in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[0]
execute if score #area Time matches 0 run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {italic:false,color:"white",type:"translatable",translate:"3ds_remake:item.menu.dialog.underground_lab.mansion.no_area"}
execute if score #area Time matches -1 run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {italic:false,color:"white",type:"translatable",translate:"3ds_remake:item.menu.dialog.underground_lab.mansion.cleared"}
execute if score #money Time matches 1.. in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[1]
execute if score #money Time matches 0 run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {italic:false,color:"white",type:"translatable",translate:"3ds_remake:item.menu.dialog.underground_lab.mansion.no_money"}
execute if score #boos Time matches 1.. if score #total_boos Time matches 1.. in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[2]
execute if score #boos Time matches 1.. if score #total_boos Time matches 0 in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[3]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
scoreboard players reset #area Time
scoreboard players reset #money Time
scoreboard players reset #new_money Time
scoreboard players reset #boos Time
scoreboard players reset #total_boos Time
data remove storage luigis_mansion:data temp