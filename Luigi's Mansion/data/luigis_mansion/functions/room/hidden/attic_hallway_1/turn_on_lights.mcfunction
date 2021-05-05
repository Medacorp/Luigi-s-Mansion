data modify storage luigis_mansion:data current_state.current_data.rooms.attic_hallway_1 merge value {cleared:1b}
function #luigis_mansion:room/hidden/attic_hallway_1/turn_lights/on
execute as @e[scores={Room=41},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #attic_hallway_1 Wave