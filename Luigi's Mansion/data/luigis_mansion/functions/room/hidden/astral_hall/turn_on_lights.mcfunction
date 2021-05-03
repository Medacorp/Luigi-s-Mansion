fill 677 111 47 677 112 47 minecraft:air
data modify storage luigis_mansion:data current_state.current_data.rooms.astral_hall merge value {cleared:1b}
function #luigis_mansion:room/hidden/astral_hall/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/hidden/astral_hall/load_boos
execute as @e[scores={Room=35},tag=!cannot_be_removed] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #astral_hall Wave