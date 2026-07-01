data modify storage luigis_mansion:data furniture set value {room:70,shake_animation:["interact","vacuum"],searchable_by:["interact","vacuum"],scan_result:"warp"}
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run data modify storage luigis_mansion:data furniture.roll set value -1800
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} positioned 736.03 26 61.0 rotated -90 0 run function luigis_mansion:spawn_furniture/desk_mirror
execute if data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} positioned 736.03 21 61.0 rotated -90 0 run function luigis_mansion:spawn_furniture/desk_mirror
#x rot 5