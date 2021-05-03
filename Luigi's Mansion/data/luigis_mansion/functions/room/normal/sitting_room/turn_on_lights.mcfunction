data modify storage luigis_mansion:data current_state.current_data.rooms.sitting_room merge value {cleared:1b}
function #luigis_mansion:room/normal/sitting_room/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/sitting_room/load_boos
execute as @e[scores={Room=56},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #sitting_room Wave