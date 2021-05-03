data modify storage luigis_mansion:data current_state.current_data.rooms.rec_room merge value {cleared:1b}
function #luigis_mansion:room/normal/rec_room/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/rec_room/load_boos
execute as @e[scores={Room=28},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #rec_room Wave