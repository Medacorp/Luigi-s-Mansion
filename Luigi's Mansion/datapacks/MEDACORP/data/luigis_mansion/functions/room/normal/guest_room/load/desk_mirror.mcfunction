data modify storage luigis_mansion:data furniture set value {room:70,pose:[0.0f,0.0f,0.0f],scan_message:"warp"}
#pose:[5.0f,0.0f,0.0f]
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run data modify storage luigis_mansion:data furniture.pose set value [0.0f,0.0f,-180.0f]
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} positioned 736.0 26 -45.0 rotated -90 0 run function luigis_mansion:spawn_furniture/desk_mirror
execute if data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} positioned 736.0 21 -45.0 rotated -90 0 run function luigis_mansion:spawn_furniture/desk_mirror