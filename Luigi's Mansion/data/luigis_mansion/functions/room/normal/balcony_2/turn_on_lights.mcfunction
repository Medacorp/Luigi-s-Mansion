data modify storage luigis_mansion:data current_state.current_data.rooms.balcony_2 merge value {cleared:1b}
function #luigis_mansion:room/normal/balcony_2/turn_lights/on
execute as @e[scores={Room=42},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #balcony_2 Wave