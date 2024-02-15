data modify storage luigis_mansion:data current_state.current_data.rooms.cellar merge value {cleared:1b}
execute if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function #luigis_mansion:room/normal/cellar/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{blackout:0b,boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/cellar/load_boos
execute as @e[scores={Room=58},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}}]}] run tag @s add remove_from_existence
execute as @e[scores={Room=58},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}}]}] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #cellar Wave