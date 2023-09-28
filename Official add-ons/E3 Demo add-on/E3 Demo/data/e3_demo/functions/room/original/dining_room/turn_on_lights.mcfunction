data modify storage luigis_mansion:data current_state.current_data.rooms.dining_room merge value {cleared:1b}
function #e3_demo:room/original/dining_room/turn_lights/on
execute as @e[scores={Room=14},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"haunted_object"}}]},tag=!haunted_music_sheet] run tag @s add remove_from_existence
execute as @e[scores={Room=14},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"haunted_object"}}]},tag=!haunted_music_sheet] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #dining_room Wave