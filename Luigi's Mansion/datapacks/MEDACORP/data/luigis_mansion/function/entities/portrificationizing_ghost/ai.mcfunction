execute unless entity @e[tag=luigi,tag=same_room] run tag @s add dead
scoreboard players add @s[scores={Dialog=301..}] Dialog 1
execute unless entity @e[tag=portrificationizing_ghost,scores={Dialog=301..380},limit=1] run scoreboard players add @s[scores={Dialog=300}] Dialog 1
scoreboard players add @s[scores={Dialog=..299}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] store result entity @s Rotation[0] float 1 run random value -180..179
data modify entity @s[scores={Dialog=1}] transformation.left_rotation set value [0.3826834323650898f,0.0f,0.0f,0.9238795325112867f]
execute if entity @s[scores={Dialog=40}] run teleport @s ~ ~-1 ~
execute if entity @s[scores={Dialog=41..100}] if predicate luigis_mansion:portrificationizing_ghost/move_down_chance run teleport @s ~ ~-0.067 ~
execute at @s[scores={Dialog=41..100}] if predicate luigis_mansion:portrificationizing_ghost/move_forward_chance rotated ~ 0 run teleport @s ^ ^ ^0.0167
execute if entity @s[scores={Dialog=140..180}] run teleport @s ~ ~ ~ ~5 ~
execute if entity @s[scores={Dialog=181..220}] run teleport @s ~ ~ ~ ~10 ~
execute if entity @s[scores={Dialog=221..299}] run teleport @s ~ ~ ~ ~20 ~
execute if entity @s[scores={Dialog=201..280}] run scoreboard players operation #temp Time = @s Dialog
execute if entity @s[scores={Dialog=201..280}] store result entity @s transformation.scale[2] float -0.0125 run scoreboard players remove #temp Time 280
scoreboard players reset #temp Time
data modify entity @s[scores={Dialog=300}] transformation.left_rotation set value [0.0f,0.0f,0.0f,1.0f]
teleport @s[scores={Dialog=300}] 770 81.45 12 0 0
execute if entity @s[scores={Dialog=301}] run setblock 770 76 12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=310}] run setblock 770 76 12 minecraft:barrier
execute if entity @s[scores={Dialog=310}] run setblock 770 77 12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=320}] run setblock 770 77 12 minecraft:air
execute if entity @s[scores={Dialog=320}] run setblock 770 78 11 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=330}] run setblock 770 78 11 minecraft:air
execute if entity @s[scores={Dialog=330}] run setblock 770 78 10 minecraft:light_gray_concrete
execute if entity @s run teleport @s[scores={Dialog=330..340}] ~ ~-0.1 ~-0.2
execute if entity @s run teleport @s[scores={Dialog=341..349}] ~ ~-0.1 ~
execute if entity @s[scores={Dialog=350..596}] run setblock ~ ~-1.15 ~1 minecraft:air
execute if entity @s[scores={Dialog=350..596}] run setblock ~ ~-1.15 ~ minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=350}] run teleport @s 770 79.45 9
execute if entity @s[scores={Dialog=360}] run teleport @s 770 79.45 8
execute if entity @s[scores={Dialog=370}] run teleport @s 770 79.45 7
execute if entity @s[scores={Dialog=390}] run teleport @s 770 79.45 6
execute if entity @s[scores={Dialog=400}] run teleport @s 770 79.45 5
execute if entity @s[scores={Dialog=350}] run setblock 770 84 7 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=360}] run setblock 770 84 7 minecraft:air
execute if entity @s[scores={Dialog=360}] run setblock 770 83 7 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=370}] run setblock 770 83 7 minecraft:air
execute if entity @s[scores={Dialog=370}] run setblock 770 82 7 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=380}] run setblock 770 82 7 minecraft:air
execute if entity @s[scores={Dialog=380}] run setblock 770 81 7 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=390}] run setblock 770 81 7 minecraft:air
execute if entity @s[scores={Dialog=390}] run setblock 770 80 6 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=400}] run setblock 770 80 6 minecraft:air
execute if entity @s[scores={Dialog=400}] run setblock 770 79 5 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=400}] run particle minecraft:cloud 770 78.3 5 0.6 0 0.6 0 10
execute if entity @s[scores={Dialog=410}] run particle minecraft:cloud 770 78.3 5 0.6 0 0.6 0 10
execute if entity @s[scores={Dialog=420}] run setblock 770 79 5 minecraft:air
execute if entity @s[scores={Dialog=420}] run setblock 770 80 4 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=430}] run setblock 770 80 4 minecraft:air
execute if entity @s[scores={Dialog=430}] run setblock 770 81 3 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=440}] run setblock 770 81 3 minecraft:air
execute if entity @s[scores={Dialog=440}] run setblock 770 82 3 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=450}] run setblock 770 82 3 minecraft:air
execute if entity @s[scores={Dialog=450}] run setblock 770 83 3 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=460}] run setblock 770 83 3 minecraft:air
execute if entity @s[scores={Dialog=460}] run setblock 770 84 3 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=470}] run setblock 770 84 3 minecraft:air
execute if entity @s[scores={Dialog=420}] run teleport @s 770 79.45 4
execute if entity @s[scores={Dialog=430}] run teleport @s 770 79.45 3
execute if entity @s[scores={Dialog=440}] run teleport @s 770 79.45 2
execute if entity @s[scores={Dialog=450}] run place template luigis_mansion:ghost_portrificationizer_room/zapper_ready 769 79 -1
execute if entity @s[scores={Dialog=460}] run teleport @s 770 79.45 1
execute if entity @s[scores={Dialog=470}] run teleport @s 770 79.45 0
execute if entity @s[scores={Dialog=470..490}] run particle minecraft:bubble_pop 770 78.3 0 0.6 0.6 0.6 0 10
execute if entity @s[scores={Dialog=490}] run teleport @s 770 79.45 0
execute if entity @s[scores={Dialog=500}] run teleport @s 770 79.45 -1
execute if entity @s[scores={Dialog=510}] run teleport @s 770 79.45 -2
execute if entity @s[scores={Dialog=510}] run place template luigis_mansion:ghost_portrificationizer_room/zapper_stand_by 769 79 -1
execute if entity @s[scores={Dialog=520}] run teleport @s 770 79.45 -3
execute if entity @s[scores={Dialog=525}] run teleport @s 770 79.45 -4
execute if entity @s[scores={Dialog=530}] run teleport @s 770 79.45 -5
execute if entity @s[scores={Dialog=520}] run setblock 770 80 -4 minecraft:air
execute if entity @s[scores={Dialog=520}] run setblock 769 80 -4 minecraft:air
execute if entity @s[scores={Dialog=520}] run setblock 768 80 -4 minecraft:air
execute if entity @s[scores={Dialog=520}] run setblock 770 81 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=520}] run setblock 769 81 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=520}] run setblock 768 81 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=525}] run setblock 770 81 -4 minecraft:air
execute if entity @s[scores={Dialog=525}] run setblock 769 81 -4 minecraft:air
execute if entity @s[scores={Dialog=525}] run setblock 768 81 -4 minecraft:air
execute if entity @s[scores={Dialog=525}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=525}] run setblock 769 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=525}] run setblock 768 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=530}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=530}] run setblock 769 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=530}] run setblock 768 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=535}] run setblock 768 82 -4 minecraft:air
execute if entity @s[scores={Dialog=535}] run setblock 769 82 -4 minecraft:oak_fence[north=true,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=535}] run setblock 769 82 -5 minecraft:oak_fence[north=false,south=true,west=false,east=false]
execute if entity @s[scores={Dialog=540}] run setblock 770 82 -4 minecraft:oak_fence[north=true,south=false,west=false,east=false]
execute if entity @s[scores={Dialog=540}] run setblock 769 82 -4 minecraft:air
execute if entity @s[scores={Dialog=540}] run setblock 770 82 -5 minecraft:oak_fence[north=false,south=true,west=false,east=true]
execute if entity @s[scores={Dialog=540}] run setblock 769 82 -5 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=545}] run teleport @s 770 79.45 -6
execute if entity @s[scores={Dialog=545}] run setblock 769 82 -5 minecraft:air
execute if entity @s[scores={Dialog=545}] run setblock 770 82 -5 minecraft:oak_fence[north=true,south=true,west=false,east=false]
execute if entity @s[scores={Dialog=545}] run setblock 770 82 -6 minecraft:oak_fence[north=false,south=true,west=false,east=false]
execute if entity @s[scores={Dialog=560}] run setblock 770 82 -6 minecraft:air
execute if entity @s[scores={Dialog=560}] run setblock 770 82 -5 minecraft:oak_fence[north=false,south=true,west=false,east=true]
execute if entity @s[scores={Dialog=560}] run setblock 769 82 -5 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=565}] run setblock 770 82 -5 minecraft:air
execute if entity @s[scores={Dialog=565}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=565}] run setblock 769 82 -4 minecraft:oak_fence[north=true,south=false,west=false,east=false]
execute if entity @s[scores={Dialog=565}] run setblock 769 82 -5 minecraft:oak_fence[north=false,south=true,west=false,east=true]
execute if entity @s[scores={Dialog=570}] run setblock 769 82 -5 minecraft:air
execute if entity @s[scores={Dialog=570}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=570}] run setblock 769 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=570}] run setblock 768 82 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=575}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=false,east=false]
execute if entity @s[scores={Dialog=575}] run setblock 769 82 -4 minecraft:air
execute if entity @s[scores={Dialog=575}] run setblock 768 82 -4 minecraft:air
execute if entity @s[scores={Dialog=575}] run setblock 770 81 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=575}] run setblock 769 81 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=575}] run setblock 768 81 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=580}] run setblock 770 81 -4 minecraft:oak_fence[north=false,south=false,west=false,east=false]
execute if entity @s[scores={Dialog=580}] run setblock 769 81 -4 minecraft:air
execute if entity @s[scores={Dialog=580}] run setblock 768 81 -4 minecraft:air
execute if entity @s[scores={Dialog=580}] run setblock 770 80 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=580}] run setblock 769 80 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=580}] run setblock 768 80 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=550}] run teleport @s 770 79.45 -7
execute if entity @s[scores={Dialog=550}] run setblock 770 81 -7 minecraft:spruce_planks
execute if entity @s[scores={Dialog=550}] run setblock 770 79 -7 minecraft:green_terracotta
execute if entity @s[scores={Dialog=570}] run setblock 770 81 -7 minecraft:green_terracotta
execute if entity @s[scores={Dialog=570}] run setblock 770 79 -7 minecraft:air
execute if entity @s[scores={Dialog=570},tag=!dead] run data modify entity @s transformation.left_rotation set value [-0.7071067811865476f,0.0f,0.0f,0.7071067811865476f]
execute if entity @s[scores={Dialog=570},tag=!dead] run data modify entity @s transformation.scale set value [1.0f,1.0f,1.0f]
execute if entity @s[scores={Dialog=570},tag=!dead] run function luigis_mansion:entities/portrificationizing_ghost/portrait with entity @s data.ghost
execute if entity @s[scores={Dialog=570}] run teleport @s 770 79.45 -8 -90 0
execute if entity @s[scores={Dialog=575}] run teleport @s 770 79.45 -9
execute if entity @s[scores={Dialog=580}] run teleport @s 770 79.45 -10
execute if entity @s[scores={Dialog=585}] run teleport @s 770 79.45 -11
execute if entity @s[scores={Dialog=590}] run teleport @s 770 79.45 -12
execute if entity @s[scores={Dialog=595}] run teleport @s 770 80.45 -12
execute if entity @s[scores={Dialog=596}] run data modify entity @s transformation.left_rotation set value [-0.5877852522924731f,0.0f,0.0f,0.8090169943749475f]
execute if entity @s[scores={Dialog=597}] run data modify entity @s transformation.left_rotation set value [-0.45399049973954675f,0.0f,0.0f,0.8910065241883679f]
execute if entity @s[scores={Dialog=598}] run data modify entity @s transformation.left_rotation set value [-0.3090169943749474f,0.0f,0.0f,0.9510565162951535f]
execute if entity @s[scores={Dialog=599}] run data modify entity @s transformation.left_rotation set value [-0.15643446504023087f,0.0f,0.0f,0.9876883405951378f]
execute if entity @s[scores={Dialog=600}] run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.0f,1.0f]
execute if entity @s[scores={Dialog=600}] run teleport @s 771.01 79.92 -12
execute if entity @s[scores={Dialog=645}] run teleport @s 771.01 78.92 -12
execute if entity @s[scores={Dialog=645}] run setblock 770 79 -12 minecraft:air
execute if entity @s[scores={Dialog=650}] run teleport @s 771.01 77.92 -12
execute if entity @s[scores={Dialog=650}] run setblock 770 78 -12 minecraft:air
execute if entity @s[scores={Dialog=650}] run setblock 770 77 -12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=655}] run teleport @s 771.01 76.92 -12
execute if entity @s[scores={Dialog=655}] run setblock 770 77 -12 minecraft:cyan_terracotta
execute if entity @s[scores={Dialog=660}] run setblock 770 77 -12 minecraft:air
execute if entity @s[scores={Dialog=660}] run teleport @s 771.01 75.92 -12
kill @s[scores={Dialog=665}]