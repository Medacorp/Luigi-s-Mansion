execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{twins_room_speedy_spirit:1b} positioned 739 22 34 run function luigis_mansion:spawn_entities/new_ghost/speedy_spirit
setblock 738 20 40 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 742 20 46 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 747 20 43 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 747 20 37 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 742 20 34 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
summon minecraft:marker 744 20 41 {Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}
summon minecraft:marker 744 20 41 {Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}

summon minecraft:marker 738 20 40 {Tags:["option"]}
summon minecraft:marker 742 20 46 {Tags:["option"]}
summon minecraft:marker 747 20 43 {Tags:["option"]}
summon minecraft:marker 747 20 37 {Tags:["option"]}
summon minecraft:marker 742 20 34 {Tags:["option"]}
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost_marker,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option,tag=selected,limit=1]
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost_marker,limit=1] ~ ~ ~
scoreboard players set #twins_room Wave 5