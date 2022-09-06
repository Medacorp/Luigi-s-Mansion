data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_16 merge value {cleared:1b}
function #luigis_mansion_3ds_remake:room/hidden/hallway_16/turn_lights/on
execute as @e[scores={Room=51},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[tag=haunted_object,tag=!haunted_music_sheet] run tag @s add remove_from_existence
execute as @e[scores={Room=51},tag=haunted_object,tag=!haunted_music_sheet] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #hallway_16 Wave