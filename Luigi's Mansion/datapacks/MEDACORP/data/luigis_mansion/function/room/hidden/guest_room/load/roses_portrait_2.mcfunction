data modify storage luigis_mansion:data furniture set value {room:70,pose:[0.0f,0.0f,-5.0f],no_ai:1b,animation:{frozen:1b},scan_result:{namespace:"luigis_mansion",id:"scan/scanner/7"}}
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run data modify storage luigis_mansion:data furniture.pose set value [0.0f,0.0f,-175.0f]
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run scoreboard players add #mirrored Selected 1
execute positioned 746.93 23.5 67 rotated 90 0 run function luigis_mansion:spawn_furniture/roses_portrait/square
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run scoreboard players remove #mirrored Selected 1