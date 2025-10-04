data modify storage luigis_mansion:data furniture set value {room:70,no_ai:1b,animation:{frozen:1b},scan_result:{namespace:"luigis_mansion",id:"scan/scanner/35"}}
execute if data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} positioned 736.07 23 72 rotated -90 0 run function luigis_mansion:spawn_furniture/sue_pea_portrait
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run data modify storage luigis_mansion:data furniture.pose set value [0.0f,0.0f,-180.0f]
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run scoreboard players set #mirrored Selected 0
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} positioned 736.07 24 72 rotated -90 0 run function luigis_mansion:spawn_furniture/sue_pea_portrait
scoreboard players set #mirrored Selected 1