data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_17 merge value {cleared:1b}
function #luigis_mansion:room/normal/hallway_17/turn_lights/on
execute as @e[scores={Room=52},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[tag=haunted_object,tag=!haunted_music_sheet] run tag @s add remove_from_existence
execute as @e[scores={Room=52},tag=haunted_object,tag=!haunted_music_sheet] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #hallway_17 Wave