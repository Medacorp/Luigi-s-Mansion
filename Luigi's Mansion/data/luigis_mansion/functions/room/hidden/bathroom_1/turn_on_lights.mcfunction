execute unless entity @e[type=minecraft:armor_stand,tag=key,tag=ball_room,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_keys{ball_room:1b} run summon minecraft:armor_stand 662 107 -21 {Pose:{Head:[0.0f,0.0f,0.01f]},Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:15}}],Small:1b,Tags:["item","key","ball_room"],DisabledSlots:2039583}
data modify storage luigis_mansion:data current_state.current_data.rooms.bathroom_1 merge value {cleared:1b}
function #luigis_mansion:room/hidden/bathroom_1/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_talk:1b} unless data storage luigis_mansion:data current_state.current_data{boo_counter:50} run function luigis_mansion:room/hidden/bathroom_1/load_boos
execute as @e[scores={Room=12},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=12},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=12},tag=ghost_marker] add dead
scoreboard players reset #bathroom_1 Wave