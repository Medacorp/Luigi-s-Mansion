teleport @s ~ ~0.4 ~
execute unless entity @a[tag=!spectator] run tag @s add dead
scoreboard players add @s[scores={Dialog=301..}] Dialog 1
execute unless entity @e[tag=portrificationizing_ghost,scores={Dialog=301..380},limit=1] run scoreboard players add @s[scores={Dialog=300}] Dialog 1
scoreboard players add @s[scores={Dialog=..299}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
execute if entity @s[scores={Dialog=1}] run data modify entity @s Rotation[0] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
execute if entity @s[scores={Dialog=1}] run kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
execute if entity @s[scores={Dialog=1}] run loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_3
execute if entity @s[scores={Dialog=1}] if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:1}}}] at @s run teleport @s ~ ~ ~ ~90 ~
execute if entity @s[scores={Dialog=1}] if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:2}}}] at @s run teleport @s ~ ~ ~ ~180 ~
execute if entity @s[scores={Dialog=1}] if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:3}}}] at @s run teleport @s ~ ~ ~ ~-90 ~
execute if entity @s[scores={Dialog=1}] run kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
data modify entity @s[scores={Dialog=1}] Pose.Head set value [45.0f,0.0f,0.0f]
execute at @s[scores={Dialog=40}] run teleport @s ~ ~-1 ~
execute at @s[scores={Dialog=41..100}] if predicate luigis_mansion:50_50 run teleport @s ~ ~-0.067 ~
execute at @s[scores={Dialog=41..100}] if predicate luigis_mansion:50_50 rotated ~ 0 run teleport @s ^ ^ ^0.0167
execute at @s[scores={Dialog=140..180}] run teleport @s ~ ~ ~ ~5 ~
execute at @s[scores={Dialog=181..220}] run teleport @s ~ ~ ~ ~10 ~
execute at @s[scores={Dialog=221..299}] run teleport @s ~ ~ ~ ~20 ~
execute if entity @s[scores={Dialog=200..279}] store result score #temp Time run data get entity @s ArmorItems[3].tag.CustomModelData
execute if entity @s[scores={Dialog=200..279}] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
data modify entity @s[scores={Dialog=300}] Pose.Head[0] set value 0f
teleport @s[scores={Dialog=300}] 770 80 12 0 0
execute if entity @s[scores={Dialog=301}] run setblock 770 76 12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=310}] run setblock 770 76 12 minecraft:barrier
execute if entity @s[scores={Dialog=310}] run setblock 770 77 12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=320}] run setblock 770 77 12 minecraft:air
execute if entity @s[scores={Dialog=320}] run setblock 770 78 11 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=330}] run setblock 770 78 11 minecraft:air
execute if entity @s[scores={Dialog=330}] run setblock 770 78 10 minecraft:light_gray_concrete
execute at @s run teleport @s[scores={Dialog=330..340}] ~ ~-0.1 ~-0.2
execute at @s run teleport @s[scores={Dialog=341..349}] ~ ~-0.1 ~
execute at @s[scores={Dialog=350..596}] run setblock ~ ~0.3 ~1 minecraft:air
execute at @s[scores={Dialog=350..596}] run setblock ~ ~0.3 ~ minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=350}] run teleport @s 770 78 9
execute if entity @s[scores={Dialog=360}] run teleport @s 770 78 8
execute if entity @s[scores={Dialog=370}] run teleport @s 770 78 7
execute if entity @s[scores={Dialog=390}] run teleport @s 770 78 6
execute if entity @s[scores={Dialog=400}] run teleport @s 770 78 5
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
execute if entity @s[scores={Dialog=420}] run teleport @s 770 78 4
execute if entity @s[scores={Dialog=430}] run teleport @s 770 78 3
execute if entity @s[scores={Dialog=440}] run teleport @s 770 78 2
execute if entity @s[scores={Dialog=450}] run setblock 769 79 -1 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:ghost_portrificationizer_room/zapper_ready"}
execute if entity @s[scores={Dialog=450}] run setblock 769 80 -1 minecraft:redstone_block
execute if entity @s[scores={Dialog=460}] run teleport @s 770 78 1
execute if entity @s[scores={Dialog=470}] run teleport @s 770 78 0
execute if entity @s[scores={Dialog=470..490}] run particle minecraft:bubble_pop 770 78.3 0 0.6 0.6 0.6 0 10
execute if entity @s[scores={Dialog=490}] run teleport @s 770 78 0
execute if entity @s[scores={Dialog=500}] run teleport @s 770 78 -1
execute if entity @s[scores={Dialog=510}] run teleport @s 770 78 -2
execute if entity @s[scores={Dialog=510}] run setblock 769 79 -1 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:ghost_portrificationizer_room/zapper_stand_by"}
execute if entity @s[scores={Dialog=510}] run setblock 769 80 -1 minecraft:redstone_block
execute if entity @s[scores={Dialog=520}] run teleport @s 770 78 -3
execute if entity @s[scores={Dialog=525}] run teleport @s 770 78 -4
execute if entity @s[scores={Dialog=530}] run teleport @s 770 78 -5
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
execute if entity @s[scores={Dialog=545}] run teleport @s 770 78 -6
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
execute if entity @s[scores={Dialog=550}] run teleport @s 770 78 -7
execute if entity @s[scores={Dialog=550}] run setblock 770 81 -7 minecraft:spruce_planks
execute if entity @s[scores={Dialog=550}] run setblock 770 79 -7 minecraft:green_terracotta
execute if entity @s[scores={Dialog=570}] run setblock 770 81 -7 minecraft:green_terracotta
execute if entity @s[scores={Dialog=570}] run setblock 770 79 -7 minecraft:air
execute if entity @s[scores={Dialog=570},tag=!dead] run function #luigis_mansion:entities/portrificationizing_ghost/portrait
execute if entity @s[scores={Dialog=570}] run teleport @s 770 77.95 -8 -90 0
execute if entity @s[scores={Dialog=575}] run teleport @s 770 77.95 -9
execute if entity @s[scores={Dialog=580}] run teleport @s 770 77.95 -10
execute if entity @s[scores={Dialog=585}] run teleport @s 770 77.95 -11
execute if entity @s[scores={Dialog=590}] run teleport @s 770 77.95 -12
execute if entity @s[scores={Dialog=595}] run teleport @s 770 78.95 -12
execute if entity @s[scores={Dialog=596}] run data merge entity @s {Pose:{Head:[18.0f,0.0f,0.0f]}}
execute if entity @s[scores={Dialog=597}] run data merge entity @s {Pose:{Head:[36.0f,0.0f,0.0f]}}
execute if entity @s[scores={Dialog=598}] run data merge entity @s {Pose:{Head:[54.0f,0.0f,0.0f]}}
execute if entity @s[scores={Dialog=599}] run data merge entity @s {Pose:{Head:[72.0f,0.0f,0.0f]}}
execute if entity @s[scores={Dialog=600}] run data merge entity @s {Pose:{Head:[90.0f,0.0f,0.0f]}}
execute if entity @s[scores={Dialog=600}] run teleport @s 770.99 78.47 -12
execute if entity @s[scores={Dialog=645}] run teleport @s 770.99 77.47 -12
execute if entity @s[scores={Dialog=645}] run setblock 770 79 -12 minecraft:air
execute if entity @s[scores={Dialog=650}] run teleport @s 770.99 76.47 -12
execute if entity @s[scores={Dialog=650}] run setblock 770 78 -12 minecraft:air
execute if entity @s[scores={Dialog=650}] run setblock 770 77 -12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=655}] run teleport @s 770.99 75.47 -12
execute if entity @s[scores={Dialog=655}] run setblock 770 77 -12 minecraft:cyan_terracotta
execute if entity @s[scores={Dialog=660}] run setblock 770 77 -12 minecraft:air
execute if entity @s[scores={Dialog=660}] run teleport @s 770.99 74.47 -12
kill @s[scores={Dialog=665}]
execute at @s run teleport @s ~ ~-0.4 ~
scoreboard players reset #temp Time