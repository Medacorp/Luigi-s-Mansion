data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_4 merge value {cleared:1b}
function #luigis_mansion:room/hidden/hallway_4/turn_lights/on
execute as @e[scores={Room=12},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #hallway_4 Wave