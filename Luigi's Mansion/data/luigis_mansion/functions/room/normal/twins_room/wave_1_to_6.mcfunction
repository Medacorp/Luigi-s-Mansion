summon minecraft:area_effect_cloud 744 20 41 {Duration:1000000,Tags:["ghost_marker","ghost","me"],Rotation:[0.0f,90.0f]}

summon minecraft:area_effect_cloud 738 20 40 {Tags:["option"]}
summon minecraft:area_effect_cloud 742 20 46 {Tags:["option"]}
summon minecraft:area_effect_cloud 747 20 43 {Tags:["option"]}
summon minecraft:area_effect_cloud 747 20 37 {Tags:["option"]}
summon minecraft:area_effect_cloud 742 20 34 {Tags:["option"]}
tag @e[type=minecraft:area_effect_cloud,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost_marker,limit=1] ~ ~ ~
scoreboard players set #twins_room Wave 6
execute as @a[scores={Room=39}] run function luigis_mansion:other/music/set/danger
function luigis_mansion:room/normal/twins_room/add_blockade

execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville{orville_health:0} at @e[tag=me,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/orville
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville{henry_health:0} at @e[tag=me,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/henry
kill @e[tag=me,limit=1]