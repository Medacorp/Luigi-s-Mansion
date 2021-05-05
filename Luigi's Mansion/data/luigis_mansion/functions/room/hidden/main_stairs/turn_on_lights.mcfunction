data modify storage luigis_mansion:data current_state.current_data.rooms.main_stairs merge value {cleared:1b}
function #luigis_mansion:room/hidden/main_stairs/turn_lights/on
execute as @e[scores={Room=29},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #main_stairs Wave