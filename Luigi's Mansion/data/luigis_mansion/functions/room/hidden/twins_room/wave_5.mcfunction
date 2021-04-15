execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{twins_room_speedy_spirit:1b} positioned 709 114 -8 run function luigis_mansion:spawn_entities/new_ghost/speedy_spirit
setblock 707 111 -13 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 711 111 -19 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 716 111 -16 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 716 111 -10 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 711 111 -7 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
summon minecraft:area_effect_cloud 713 111 -14 {Duration:1000000,Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}
summon minecraft:area_effect_cloud 713 111 -14 {Duration:1000000,Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}

summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","1"]}
summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","2"]}
summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","3"]}
summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","4"]}
summon minecraft:area_effect_cloud 713 111 -14 {Tags:["option","5"]}
tag @e[type=minecraft:area_effect_cloud,sort=random,tag=option,limit=2] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=1,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 707 111 -13
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=2,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 711 111 -19
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=3,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 716 111 -16
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=4,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 716 111 -10
execute if entity @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,tag=5,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] 711 111 -7
scoreboard players set #twins_room Wave 5