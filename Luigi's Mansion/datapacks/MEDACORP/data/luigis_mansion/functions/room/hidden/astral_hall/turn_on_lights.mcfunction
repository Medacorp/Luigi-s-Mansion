data modify storage luigis_mansion:data current_state.current_data.rooms.astral_hall merge value {cleared:1b}
execute if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function #luigis_mansion:room/hidden/astral_hall/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{blackout:0b,boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/hidden/astral_hall/load_boos
execute as @e[scores={Room=45},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"haunted_object"}}]},tag=!haunted_music_sheet] run tag @s add remove_from_existence
execute as @e[scores={Room=45},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"haunted_object"}}]},tag=!haunted_music_sheet] run function luigis_mansion:old_entities/haunted_object/reset
scoreboard players reset #astral_hall Wave