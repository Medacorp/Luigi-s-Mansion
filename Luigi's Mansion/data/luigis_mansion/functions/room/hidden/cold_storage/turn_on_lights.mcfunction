data modify storage luigis_mansion:data current_state.current_data.rooms.cold_storage merge value {cleared:1b}
function #luigis_mansion:room/hidden/cold_storage/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/hidden/cold_storage/load_boos
execute as @e[scores={Room=55},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #cold_storage Wave