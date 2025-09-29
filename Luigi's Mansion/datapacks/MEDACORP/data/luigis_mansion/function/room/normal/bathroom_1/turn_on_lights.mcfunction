data modify storage luigis_mansion:data current_state.current_data.rooms.bathroom_1 merge value {cleared:1b}
execute if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function #luigis_mansion:room/normal/bathroom_1/turn_lights/on
execute as @e[scores={Room=16},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={data:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}] run tag @s add remove_from_existence
execute as @e[scores={Room=16},nbt={data:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #bathroom_1 Wave