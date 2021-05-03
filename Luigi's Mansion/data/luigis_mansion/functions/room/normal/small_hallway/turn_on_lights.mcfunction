data modify storage luigis_mansion:data current_state.current_data.rooms.small_hallway merge value {cleared:1b}
function #luigis_mansion:room/normal/small_hallway/turn_lights/on
execute as @e[scores={Room=6},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #small_hallway Wave