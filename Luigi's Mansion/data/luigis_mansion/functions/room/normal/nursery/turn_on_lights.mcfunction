data modify storage luigis_mansion:data current_state.current_data.rooms.nursery merge value {cleared:1b}
function #luigis_mansion:room/normal/nursery/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/nursery/load_boos
execute as @e[scores={Room=9},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #nursery Wave