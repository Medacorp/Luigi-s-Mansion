data modify storage luigis_mansion:data furniture set value {room:67,tags:["waterfall"]}
execute unless data storage luigis_mansion:data current_state.luigis_mansion.current_data.technical_data{closed_pipe:1b} positioned 689 8 17.0 rotated -90 0 run function luigis_mansion:spawn_furniture/waterfall/left_corner
data remove storage luigis_mansion:data furniture