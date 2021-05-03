data modify storage luigis_mansion:data current_state.current_data.rooms.fortune_tellers_room merge value {cleared:1b}
function #luigis_mansion:room/hidden/fortune_tellers_room/turn_lights/on
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {toad_4_happy:1b}
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/hidden/fortune_tellers_room/load_boos
execute as @e[scores={Room=16},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #fortune_tellers_room Wave