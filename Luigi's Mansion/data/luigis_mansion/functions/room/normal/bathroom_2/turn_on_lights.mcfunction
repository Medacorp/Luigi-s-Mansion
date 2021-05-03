data modify storage luigis_mansion:data current_state.current_data.rooms.bathroom_2 merge value {cleared:1b}
function #luigis_mansion:room/normal/bathroom_2/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/bathroom_2/load_boos
execute as @e[scores={Room=33},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #bathroom_2 Wave