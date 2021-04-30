execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{twins_room_speedy_spirit:1b} positioned 708 113 -7 run function luigis_mansion:spawn_entities/new_ghost/speedy_spirit
setblock 707 111 -13 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 711 111 -19 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 716 111 -16 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 716 111 -10 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 711 111 -7 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
summon minecraft:marker 713 111 -14 {Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}
summon minecraft:marker 713 111 -14 {Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}

summon minecraft:marker 707 111 -13 {Tags:["option"]}
summon minecraft:marker 711 111 -19 {Tags:["option"]}
summon minecraft:marker 716 111 -16 {Tags:["option"]}
summon minecraft:marker 716 111 -10 {Tags:["option"]}
summon minecraft:marker 711 111 -7 {Tags:["option"]}
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option,tag=selected,limit=1]
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=713.5,y=111,z=-13.5,distance=..0.7,tag=ghost_marker,limit=1] ~ ~ ~
scoreboard players set #twins_room Wave 5