execute unless entity @e[type=minecraft:armor_stand,tag=key,tag=rec_room,limit=1] unless data storage luigis_mansion:data current_state.current_data.obtained_keys{rec_room:1b} run summon minecraft:armor_stand 649 96 18 {Pose:{Head:[0.0f,0.0f,0.01f]},Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:15}}],Small:1b,Tags:["item","key","rec_room"],DisabledSlots:2039583}
data modify storage luigis_mansion:data current_state.current_data.rooms.bottom_of_the_well merge value {cleared:1b}
function #luigis_mansion:room/hidden/bottom_of_the_well/turn_lights/on
execute as @e[scores={Room=27},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=27},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=27},tag=ghost_marker] add dead
scoreboard players reset #bottom_of_the_well Wave