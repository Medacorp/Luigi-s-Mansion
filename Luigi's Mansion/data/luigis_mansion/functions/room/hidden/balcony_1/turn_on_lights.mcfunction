data modify storage luigis_mansion:data current_state.current_data.rooms.balcony_1 merge value {cleared:1b}
function #luigis_mansion:room/hidden/balcony_1/turn_lights/on
execute as @e[scores={Room=5},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence