summon minecraft:marker 744 20 41 {Tags:["hidden","ghost","me"],Rotation:[0.0f,90.0f]}

summon minecraft:marker 738 20 40 {Tags:["option"]}
summon minecraft:marker 742 20 46 {Tags:["option"]}
summon minecraft:marker 747 20 43 {Tags:["option"]}
summon minecraft:marker 747 20 37 {Tags:["option"]}
summon minecraft:marker 742 20 34 {Tags:["option"]}
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost,tag=hidden,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option]
scoreboard players set #the_twins_room Wave 6
execute as @a[scores={Room=49}] run function luigis_mansion:other/music/set/danger
tag @e[scores={Room=49},tag=furniture,tag=door] add blockade

execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.henry_and_orville.orville{health:0} run data modify storage luigis_mansion:data entity set value {room:49,scan_result:{namespace:"luigis_mansion",id:"scan/entity/orville"}}
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.henry_and_orville.orville{health:0} at @e[tag=me,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/henry_and_orville/orville
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.henry_and_orville.henry{health:0} run data modify storage luigis_mansion:data entity set value {room:49,scan_result:{namespace:"luigis_mansion",id:"scan/entity/henry"}}
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.henry_and_orville.henry{health:0} at @e[tag=me,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/henry_and_orville/henry
kill @e[tag=me,limit=1]