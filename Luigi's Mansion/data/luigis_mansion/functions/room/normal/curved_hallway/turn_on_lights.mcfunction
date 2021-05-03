data modify storage luigis_mansion:data current_state.current_data.rooms.curved_hallway merge value {cleared:1b}
function #luigis_mansion:room/normal/curved_hallway/turn_lights/on
execute as @e[scores={Room=48},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence