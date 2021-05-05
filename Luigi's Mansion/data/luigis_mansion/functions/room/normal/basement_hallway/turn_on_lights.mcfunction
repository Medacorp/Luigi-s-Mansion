data modify storage luigis_mansion:data current_state.current_data.rooms.basement_hallway merge value {cleared:1b}
function #luigis_mansion:room/normal/basement_hallway/turn_lights/on
execute as @e[scores={Room=47},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #basement_hallway Wave