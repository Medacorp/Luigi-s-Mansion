data modify storage luigis_mansion:data current_state.current_data.rooms.attic_hallway_2 merge value {cleared:1b}
function #luigis_mansion:room/normal/attic_hallway_2/turn_lights/on
execute as @e[scores={Room=43},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #attic_hallway_2 Wave