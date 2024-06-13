data modify storage luigis_mansion:data current_state.current_data.rooms.hallway_2 merge value {cleared:1b}
function #e3_demo:room/original/hallway_2/turn_lights/on
execute as @e[scores={Room=4},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={data:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}] run tag @s add remove_from_existence
execute as @e[scores={Room=4},nbt={data:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #hallway_2 Wave