data modify storage luigis_mansion:data current_state.current_data.rooms.bath_room merge value {cleared:1b}
function #e3_demo:room/original/bath_room/turn_lights/on
execute as @e[scores={Room=12},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}}]}] run tag @s add remove_from_existence
execute as @e[scores={Room=12},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}}]}] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #bath_room Wave