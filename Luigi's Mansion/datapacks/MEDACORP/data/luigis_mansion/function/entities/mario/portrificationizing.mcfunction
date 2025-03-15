teleport @s ~ ~0.4 ~
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run teleport @s 771.01 76.65 -12
execute if entity @s[scores={Dialog=1}] run setblock 770 77 -12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=10}] run teleport @s 771.01 77.65 -12
execute if entity @s[scores={Dialog=10}] run setblock 770 77 -12 minecraft:air
execute if entity @s[scores={Dialog=10}] run setblock 770 78 -12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=20}] run teleport @s 771.01 78.65 -12
execute if entity @s[scores={Dialog=20}] run setblock 770 79 -12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=65}] run data merge entity @s {Pose:{Head:[18.0f,-180.0f,0.0f]}}
execute if entity @s[scores={Dialog=66}] run data merge entity @s {Pose:{Head:[36.0f,-180.0f,0.0f]}}
execute if entity @s[scores={Dialog=67}] run data merge entity @s {Pose:{Head:[54.0f,-180.0f,0.0f]}}
execute if entity @s[scores={Dialog=68}] run data merge entity @s {Pose:{Head:[72.0f,-180.0f,0.0f]}}
execute if entity @s[scores={Dialog=69}] run data merge entity @s {Pose:{Head:[90.0f,-180.0f,0.0f]}}
execute if entity @s[scores={Dialog=70}] run teleport @s 770 79.05 -12
execute if entity @s[scores={Dialog=75}] run teleport @s 770 78.05 -12
execute if entity @s[scores={Dialog=75}] run setblock 770 79 -12 minecraft:air
execute at @s[scores={Dialog=81..206}] run setblock ~ ~0.3 ~-1 minecraft:air
execute at @s[scores={Dialog=81..206}] run setblock ~ ~0.3 ~ minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=80}] run teleport @s 770 78.05 -11
execute if entity @s[scores={Dialog=85}] run teleport @s 770 78.05 -10
execute if entity @s[scores={Dialog=90}] run teleport @s 770 78.05 -9
execute if entity @s[scores={Dialog=95}] run teleport @s 770 78.05 -8
execute if entity @s[scores={Dialog=100}] run teleport @s 770 78.05 -7
execute if entity @s[scores={Dialog=80}] run setblock 770 80 -4 minecraft:air
execute if entity @s[scores={Dialog=80}] run setblock 769 80 -4 minecraft:air
execute if entity @s[scores={Dialog=80}] run setblock 768 80 -4 minecraft:air
execute if entity @s[scores={Dialog=80}] run setblock 770 81 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=80}] run setblock 769 81 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=80}] run setblock 768 81 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=85}] run setblock 770 81 -4 minecraft:air
execute if entity @s[scores={Dialog=85}] run setblock 769 81 -4 minecraft:air
execute if entity @s[scores={Dialog=85}] run setblock 768 81 -4 minecraft:air
execute if entity @s[scores={Dialog=85}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=85}] run setblock 769 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=85}] run setblock 768 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=90}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=90}] run setblock 769 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=90}] run setblock 768 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=95}] run setblock 768 82 -4 minecraft:air
execute if entity @s[scores={Dialog=95}] run setblock 769 82 -4 minecraft:oak_fence[north=true,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=95}] run setblock 769 82 -5 minecraft:oak_fence[north=false,south=true,west=false,east=false]
execute if entity @s[scores={Dialog=100}] run setblock 770 82 -4 minecraft:oak_fence[north=true,south=false,west=false,east=false]
execute if entity @s[scores={Dialog=100}] run setblock 769 82 -4 minecraft:air
execute if entity @s[scores={Dialog=100}] run setblock 770 82 -5 minecraft:oak_fence[north=false,south=true,west=false,east=true]
execute if entity @s[scores={Dialog=100}] run setblock 769 82 -5 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=105}] run setblock 769 82 -5 minecraft:air
execute if entity @s[scores={Dialog=105}] run setblock 770 82 -5 minecraft:oak_fence[north=true,south=true,west=false,east=false]
execute if entity @s[scores={Dialog=105}] run setblock 770 82 -6 minecraft:oak_fence[north=false,south=true,west=false,east=false]
execute if entity @s[scores={Dialog=120}] run setblock 770 82 -6 minecraft:air
execute if entity @s[scores={Dialog=120}] run setblock 770 82 -5 minecraft:oak_fence[north=false,south=true,west=false,east=true]
execute if entity @s[scores={Dialog=120}] run setblock 769 82 -5 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=125}] run setblock 770 82 -5 minecraft:air
execute if entity @s[scores={Dialog=125}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=125}] run setblock 769 82 -4 minecraft:oak_fence[north=true,south=false,west=false,east=false]
execute if entity @s[scores={Dialog=125}] run setblock 769 82 -5 minecraft:oak_fence[north=false,south=true,west=false,east=true]
execute if entity @s[scores={Dialog=130}] run setblock 769 82 -5 minecraft:air
execute if entity @s[scores={Dialog=130}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=130}] run setblock 769 82 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=130}] run setblock 768 82 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=135}] run setblock 770 82 -4 minecraft:oak_fence[north=false,south=false,west=false,east=false]
execute if entity @s[scores={Dialog=135}] run setblock 769 82 -4 minecraft:air
execute if entity @s[scores={Dialog=135}] run setblock 768 82 -4 minecraft:air
execute if entity @s[scores={Dialog=135}] run setblock 770 81 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=135}] run setblock 769 81 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=135}] run setblock 768 81 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=140}] run setblock 770 81 -4 minecraft:oak_fence[north=false,south=false,west=false,east=false]
execute if entity @s[scores={Dialog=140}] run setblock 769 81 -4 minecraft:air
execute if entity @s[scores={Dialog=140}] run setblock 768 81 -4 minecraft:air
execute if entity @s[scores={Dialog=140}] run setblock 770 80 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
execute if entity @s[scores={Dialog=140}] run setblock 769 80 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
execute if entity @s[scores={Dialog=140}] run setblock 768 80 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
execute if entity @s[scores={Dialog=110}] run setblock 770 81 -7 minecraft:spruce_planks
execute if entity @s[scores={Dialog=110}] run setblock 770 79 -7 minecraft:green_terracotta
execute if entity @s[scores={Dialog=120}] run setblock 770 81 -7 minecraft:green_terracotta
execute if entity @s[scores={Dialog=120}] run setblock 770 79 -7 minecraft:air
execute if entity @s[scores={Dialog=110}] run playsound luigis_mansion:entity.mario.owch neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=110}] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.0f]}}
data modify entity @s[scores={Dialog=110}] equipment.head merge value {id:"minecraft:diamond_pickaxe",components:{"minecraft:item_model":"luigis_mansion:entity/portrificationizing_mario","minecraft:unbreakable":{},"minecraft:custom_model_data":{floats:[80f]}}}
execute if entity @s[scores={Dialog=120}] run teleport @s 770 78 -6 -180 0
execute if entity @s[scores={Dialog=125}] run teleport @s 770 78 -5
execute if entity @s[scores={Dialog=130}] run teleport @s 770 78 -4
execute if entity @s[scores={Dialog=135}] run teleport @s 770 78 -3
execute if entity @s[scores={Dialog=140}] run place template luigis_mansion:ghost_portrificationizer_room/zapper_ready 769 79 -1
execute if entity @s[scores={Dialog=140}] run teleport @s 770 78 -2
execute if entity @s[scores={Dialog=145}] run teleport @s 770 78 -1
execute if entity @s[scores={Dialog=150}] run teleport @s 770 78 0
execute if entity @s[scores={Dialog=150..160}] run particle minecraft:bubble_pop 770 78.3 0 0.6 0.6 0.6 0 10
execute if entity @s[scores={Dialog=150}] run playsound luigis_mansion:entity.mario.wowch neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=160}] run teleport @s 770 78 1
execute if entity @s[scores={Dialog=165}] run teleport @s 770 78 2
execute if entity @s[scores={Dialog=170}] run place template luigis_mansion:ghost_portrificationizer_room/zapper_stand_by 769 79 -1
execute if entity @s[scores={Dialog=170}] run teleport @s 770 78 3
execute if entity @s[scores={Dialog=175}] run teleport @s 770 78 4
execute if entity @s[scores={Dialog=155}] run setblock 770 84 3 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=160}] run setblock 770 84 3 minecraft:air
execute if entity @s[scores={Dialog=160}] run setblock 770 83 3 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=165}] run setblock 770 83 3 minecraft:air
execute if entity @s[scores={Dialog=165}] run setblock 770 82 3 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=170}] run setblock 770 82 3 minecraft:air
execute if entity @s[scores={Dialog=170}] run setblock 770 81 3 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=175}] run setblock 770 81 3 minecraft:air
execute if entity @s[scores={Dialog=175}] run setblock 770 80 4 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=180}] run setblock 770 80 4 minecraft:air
execute if entity @s[scores={Dialog=180}] run setblock 770 79 5 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=180}] run teleport @s 770 78 5
execute if entity @s[scores={Dialog=180}] run playsound luigis_mansion:entity.mario.oof neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=180}] run particle minecraft:cloud 770 78.3 5 0.6 0 0.6 0 10
execute if entity @s[scores={Dialog=185}] run playsound luigis_mansion:entity.mario.wah_ah_ah_ah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=185}] run particle minecraft:cloud 770 78.3 5 0.6 0 0.6 0 10
execute if entity @s[scores={Dialog=190}] run setblock 770 79 5 minecraft:air
execute if entity @s[scores={Dialog=190}] run setblock 770 80 6 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=195}] run setblock 770 80 6 minecraft:air
execute if entity @s[scores={Dialog=195}] run setblock 770 81 7 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=200}] run setblock 770 81 7 minecraft:air
execute if entity @s[scores={Dialog=200}] run setblock 770 82 7 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=205}] run setblock 770 82 7 minecraft:air
execute if entity @s[scores={Dialog=205}] run setblock 770 83 7 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=210}] run setblock 770 83 7 minecraft:air
execute if entity @s[scores={Dialog=210}] run setblock 770 84 7 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=215}] run setblock 770 84 7 minecraft:air
execute if entity @s[scores={Dialog=190}] run teleport @s 770 78 6
execute if entity @s[scores={Dialog=195}] run teleport @s 770 78 7
execute if entity @s[scores={Dialog=200}] run teleport @s 770 78 8
execute if entity @s[scores={Dialog=205}] run teleport @s 770 78 9
execute if entity @s[scores={Dialog=210}] run teleport @s 770 78 10
execute at @s run teleport @s[scores={Dialog=211..219}] ~ ~0.1 ~
execute at @s run teleport @s[scores={Dialog=220..229}] ~ ~0.1 ~0.2
execute at @s run teleport @s[scores={Dialog=230}] 770 80.5 13
execute at @s run teleport @s[scores={Dialog=230..329}] ~ ~-0.02 ~0.02
data modify entity @s[scores={Dialog=230}] Pose.Head set value [45.0f,0.0f,0.0f]
execute if entity @s[scores={Dialog=215}] run setblock 770 78 9 minecraft:air
execute if entity @s[scores={Dialog=215}] run setblock 770 78 10 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=220}] run setblock 770 78 10 minecraft:air
execute if entity @s[scores={Dialog=220}] run setblock 770 78 11 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=225}] run setblock 770 78 11 minecraft:air
execute if entity @s[scores={Dialog=225}] run setblock 770 77 12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=230}] run setblock 770 77 12 minecraft:air
execute if entity @s[scores={Dialog=230}] run setblock 770 76 12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=235}] run setblock 770 76 12 minecraft:barrier
execute if entity @s[scores={Dialog=330}] run playsound luigis_mansion:entity.mario.unportrificationizing neutral @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Dialog=330..370}] run teleport @s ~ ~ ~ ~5 ~
execute at @s[scores={Dialog=371..410}] run teleport @s ~ ~ ~ ~10 ~
execute at @s[scores={Dialog=411..529}] run teleport @s ~ ~ ~ ~20 ~
execute if entity @s[scores={Dialog=430..509}] store result score #temp Time run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]
execute if entity @s[scores={Dialog=430..509}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
teleport @s[scores={Dialog=530}] 770 81 15
execute if entity @s[scores={Dialog=620}] run playsound luigis_mansion:entity.mario.wohh_hoo_hoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=660}] run playsound luigis_mansion:entity.mario.oof neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=660}] run particle minecraft:cloud 774 78.5 19.8 0.2 0.2 0 0 10
tag @s[scores={Dialog=720}] remove cannot_be_removed
tag @s[scores={Dialog=720}] add remove_from_existence
execute at @s run teleport @s ~ ~-0.4 ~