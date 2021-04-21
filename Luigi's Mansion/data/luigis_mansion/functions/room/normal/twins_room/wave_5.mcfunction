execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{twins_room_speedy_spirit:1b} positioned 739 22 34 run function luigis_mansion:spawn_entities/new_ghost/speedy_spirit
setblock 738 20 40 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 742 20 46 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 747 20 43 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 747 20 37 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 742 20 34 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
summon minecraft:area_effect_cloud 744 20 41 {Duration:1000000,Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}
summon minecraft:area_effect_cloud 744 20 41 {Duration:1000000,Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}

summon minecraft:area_effect_cloud 738 20 40 {Tags:["option"]}
summon minecraft:area_effect_cloud 742 20 46 {Tags:["option"]}
summon minecraft:area_effect_cloud 747 20 43 {Tags:["option"]}
summon minecraft:area_effect_cloud 747 20 37 {Tags:["option"]}
summon minecraft:area_effect_cloud 742 20 34 {Tags:["option"]}
tag @e[type=minecraft:area_effect_cloud,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost_marker,limit=1] ~ ~ ~
kill @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,limit=1]
tag @e[type=minecraft:area_effect_cloud,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:area_effect_cloud,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:area_effect_cloud,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost_marker,limit=1] ~ ~ ~
scoreboard players set #twins_room Wave 5