execute unless entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"item"},item:{namespace:"luigis_mansion",id:"key"},variant:"hallway_8"}}}]},limit=1] unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_8"]} run scoreboard players set #temp Searched 1
execute if score #temp Searched matches 1 run data modify storage luigis_mansion:data entity set value {room:32,variant:0b,rotation:[180.0f,0.0f]}
execute if score #temp Searched matches 1 run function luigis_mansion:spawn_entities/item/key {door:"hallway_8"}
execute unless score #temp Searched matches 1 run tag @e[tag=selected] add nothing
scoreboard players reset #temp Searched
function 3ds_remake:room/gallery/clear_task/normal/task_5