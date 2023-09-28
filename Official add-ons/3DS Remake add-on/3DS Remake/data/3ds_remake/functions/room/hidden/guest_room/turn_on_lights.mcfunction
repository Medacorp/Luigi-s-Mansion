execute if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function #3ds_remake:room/hidden/guest_room/turn_lights/on
data modify storage luigis_mansion:data current_state.current_data.rooms.guest_room merge value {cleared:1b}
execute unless block 742 21 -52 minecraft:redstone_lamp if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function 3ds_remake:room/hidden/guest_room/load_boos
execute as @e[scores={Room=70},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"haunted_object"}}]},tag=!haunted_music_sheet] run tag @s add remove_from_existence
execute as @e[scores={Room=70},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"haunted_object"}}]},tag=!haunted_music_sheet] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #guest_room Wave