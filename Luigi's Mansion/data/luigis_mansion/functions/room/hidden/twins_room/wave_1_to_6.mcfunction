summon minecraft:marker 713 111 -14 {Tags:["ghost_marker","ghost","me"],Rotation:[0.0f,90.0f]}

summon minecraft:marker 707 111 -13 {Tags:["option"]}
summon minecraft:marker 711 111 -19 {Tags:["option"]}
summon minecraft:marker 716 111 -16 {Tags:["option"]}
summon minecraft:marker 716 111 -10 {Tags:["option"]}
summon minecraft:marker 711 111 -7 {Tags:["option"]}
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] ~ ~ ~
scoreboard players set #twins_room Wave 6
execute as @a[scores={Room=39}] run function luigis_mansion:other/music/set/danger
function luigis_mansion:room/hidden/twins_room/add_blockade

execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville{orville_health:0} at @e[tag=me,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/orville
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville{henry_health:0} at @e[tag=me,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/henry
kill @e[tag=me,limit=1]