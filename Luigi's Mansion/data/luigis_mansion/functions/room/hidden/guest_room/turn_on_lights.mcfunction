function #luigis_mansion:room/hidden/guest_room/turn_lights/on
data modify storage luigis_mansion:data current_state.current_data.rooms.guest_room merge value {cleared:1b}
execute unless block 713 112 46 minecraft:redstone_lamp if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/guest_room/load_boos
execute as @e[scores={Room=57},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #guest_room Wave