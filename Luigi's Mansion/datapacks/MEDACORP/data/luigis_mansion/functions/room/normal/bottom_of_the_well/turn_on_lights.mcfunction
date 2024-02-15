data modify storage luigis_mansion:data current_state.current_data.rooms.bottom_of_the_well merge value {cleared:1b}
execute if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function #luigis_mansion:room/normal/bottom_of_the_well/turn_lights/on
execute as @e[scores={Room=31},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}}]}] run tag @s add remove_from_existence
execute as @e[scores={Room=31},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}}]}] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #bottom_of_the_well Wave