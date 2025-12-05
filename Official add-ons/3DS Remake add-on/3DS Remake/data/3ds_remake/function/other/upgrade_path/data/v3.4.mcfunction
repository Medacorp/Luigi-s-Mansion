execute unless data storage luigis_mansion:data update_data{data_version:8} run function 3ds_remake:other/upgrade_path/data/v3.3
data modify storage luigis_mansion:data update_data merge value {data_version:9,area:1,ending_dialog:{namespace:"luigis_mansion",id:"mario_to_normal"}}
execute if data storage luigis_mansion:data update_data{obtained_keys:["hallway_3"]} run data modify storage luigis_mansion:data update_data.area set value 2
execute if data storage luigis_mansion:data update_data{obtained_keys:["courtyard"]} run data modify storage luigis_mansion:data update_data.area set value 3
execute if data storage luigis_mansion:data update_data{obtained_keys:["hallway_18"]} run data modify storage luigis_mansion:data update_data.area set value 4
execute if data storage luigis_mansion:data update_data.rooms.secret_altar{cleared:1b} run data modify storage luigis_mansion:data update_data.area set value 5
execute if data storage luigis_mansion:data update_data.boos[{room:16}] run data modify storage luigis_mansion:data update_data.boos[{room:16}].room set value 25
execute if data storage luigis_mansion:data update_data.boos[{room:19}] run data modify storage luigis_mansion:data update_data.boos[{room:19}].room set value 25
execute if data storage luigis_mansion:data current_state.current_data{data_index:1} in luigis_mansion:normal run teleport @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},scores={Room=14}] 682 11 -9
execute if data storage luigis_mansion:data current_state.current_data{data_index:1} run scoreboard players set @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},scores={Room=14}] Room 13
execute if data storage luigis_mansion:data current_state.current_data{data_index:1} run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},scores={Room=16}] add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data{data_index:1} run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},scores={Room=16}] add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data{data_index:1} run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"hidden_boo"}}},scores={Room=19}] add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data{data_index:1} run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"hidden_boo"}}},scores={Room=19}] add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data{data_index:1} if data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"paintings"}}] run data modify storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"paintings"}}].name.id set value "portraits"
execute if data storage luigis_mansion:data current_state.current_data{data_index:1} run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"hidden_boo"}}},scores={SpawnTime=..-1}] add spawn