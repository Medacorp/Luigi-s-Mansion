execute unless data storage luigis_mansion:data current_state.current_data.obtained_keys{secret_altar:1b} run summon minecraft:armor_stand 696 120.2 50 {Pose:{Head:[0.0f,-180.0f,0.01f]},Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:19}}],Small:1b,Tags:["item","key","secret_altar","rotated","vacuumable"],Rotation:[180.0f,0.0f],DisabledSlots:2039583}
data modify entity @e[x=696.5,y=121,z=50.5,distance=..0.7,limit=1,type=minecraft:item_frame] Item.tag.map set value 249
data modify storage luigis_mansion:data current_state.current_data.rooms.artists_studio merge value {cleared:1b}
function #luigis_mansion:room/hidden/artists_studio/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_talk:1b} unless data storage luigis_mansion:data current_state.current_data{boo_counter:50} run function luigis_mansion:room/hidden/artists_studio/load_boos
execute as @e[scores={Room=58},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=58},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=58},tag=ghost_marker] add dead
scoreboard players reset #artists_studio Wave