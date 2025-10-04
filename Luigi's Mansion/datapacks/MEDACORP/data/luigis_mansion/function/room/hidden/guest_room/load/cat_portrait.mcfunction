data modify storage luigis_mansion:data furniture set value {room:70,pose:[0.0f,0.0f,10.0f],no_ai:1b,animation:{frozen:1b},scan_result:{namespace:"luigis_mansion",id:"scan/scanner/7"}}
execute if data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} positioned 746.93 24 63.0 rotated -90 0 run function luigis_mansion:spawn_furniture/cat_portrait
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run data modify storage luigis_mansion:data furniture.pose set value [0.0f,0.0f,170.0f]
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run scoreboard players set #mirrored Selected 0
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} positioned 746.93 23 63.0 rotated 90 0 run function luigis_mansion:spawn_furniture/cat_portrait
scoreboard players set #mirrored Selected 1