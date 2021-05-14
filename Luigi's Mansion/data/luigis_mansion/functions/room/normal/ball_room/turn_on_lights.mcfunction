data modify storage luigis_mansion:data current_state.current_data.rooms.ball_room merge value {cleared:1b}
function #luigis_mansion:room/normal/ball_room/turn_lights/on
tag @e[scores={Room=17},tag=ball_floor] remove enabled
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/ball_room/load_boos
execute as @e[scores={Room=17},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #ball_room Wave