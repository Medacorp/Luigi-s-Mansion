data modify storage luigis_mansion:data current_state.current_data.rooms.sealed_room merge value {cleared:1b}
execute if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function #luigis_mansion:room/hidden/sealed_room/turn_lights/on
execute as @e[scores={Room=66},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"haunted_object"}}]},tag=!haunted_music_sheet] run tag @s add remove_from_existence
execute as @e[scores={Room=66},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"haunted_object"}}]},tag=!haunted_music_sheet] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #sealed_room Wave