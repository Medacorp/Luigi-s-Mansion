summon minecraft:area_effect_cloud 713 111 -14 {Duration:1000000,Tags:["ghost_marker","ghost","me"],Rotation:[0.0f,90.0f]}

summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","1"]}
summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","2"]}
summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","3"]}
summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","4"]}
summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","5"]}
tag @e[type=minecraft:area_effect_cloud,sort=random,tag=option,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=1,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 707 111 -13
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=2,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 711 111 -19
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=3,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 716 111 -16
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=4,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 716 111 -10
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=5,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 711 111 -7
scoreboard players set #twins_room Wave 6
execute as @a[scores={Room=39}] run function luigis_mansion:other/music/set/danger
function luigis_mansion:room/hidden/twins_room/add_blockade

execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville{orville_health:0} at @e[tag=me,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/orville
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville{henry_health:0} at @e[tag=me,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/henry
kill @e[tag=me,limit=1]