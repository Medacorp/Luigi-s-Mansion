data modify storage luigis_mansion:data current_state.current_data.rooms.main_hallway merge value {cleared:1b}
function #luigis_mansion:room/hidden/main_hallway/turn_lights/on
execute as @e[scores={Room=10},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #main_hallway Wave