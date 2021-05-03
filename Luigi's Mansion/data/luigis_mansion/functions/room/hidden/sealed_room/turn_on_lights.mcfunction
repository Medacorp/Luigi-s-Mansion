data modify storage luigis_mansion:data current_state.current_data.rooms.sealed_room merge value {cleared:1b}
function #luigis_mansion:room/hidden/sealed_room/turn_lights/on
execute as @e[scores={Room=53},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #sealed_room Wave