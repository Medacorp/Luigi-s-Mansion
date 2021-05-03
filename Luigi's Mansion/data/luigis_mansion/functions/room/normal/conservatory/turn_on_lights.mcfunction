data modify storage luigis_mansion:data current_state.current_data.rooms.conservatory merge value {cleared:1b}
function #luigis_mansion:room/normal/conservatory/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/conservatory/load_boos
execute as @e[scores={Room=21},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #conservatory Wave