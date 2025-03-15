$execute unless data storage luigis_mansion:data current_state.current_data{obtained_keys:[$(key)]} unless data storage luigis_mansion:data current_state.current_data{used_keys:[$(key)]} run tag @s add locked
$execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:[$(key)]} unless data storage luigis_mansion:data current_state.current_data{used_keys:[$(key)]} run tag @s add unlock
execute if entity @e[tag=luigi,tag=try_opening_door,tag=debug_unlock_all_doors,limit=1] run tag @s[tag=locked] add unlock
execute if entity @e[tag=luigi,tag=try_opening_door,tag=debug_unlock_all_doors,limit=1] run tag @s remove locked
execute if entity @s[tag=!locked,tag=!unlock] run data remove entity @s data.key