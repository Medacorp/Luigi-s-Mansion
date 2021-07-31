fill 687 120 7 687 122 8 minecraft:air
fill 688 120 9 688 122 9 minecraft:yellow_terracotta
fill 688 120 6 688 122 6 minecraft:yellow_terracotta
data modify storage luigis_mansion:data current_state.current_data.rooms.clockwork_room merge value {cleared:1b}
function #luigis_mansion:room/normal/clockwork_room/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/clockwork_room/load_boos
execute as @e[scores={Room=62},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #clockwork_room Wave