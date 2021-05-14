data modify storage luigis_mansion:data current_state.current_data.rooms.twins_room merge value {cleared:1b}
function #luigis_mansion:room/normal/twins_room/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/twins_room/load_boos
execute as @e[scores={Room=49},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #twins_room Wave