data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_10 merge value {cleared:1b}
function #luigis_mansion:room/normal/hallway_10/turn_lights/on
execute as @e[scores={Room=36},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #hallway_10 Wave