scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-0.15 ^0.1
teleport @s[scores={AnimationProgress=2}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=3}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=4}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=5}] ^ ^-0.75 ^0.5
teleport @s[scores={AnimationProgress=6}] ^ ^-0.9 ^0.6
teleport @s[scores={AnimationProgress=7}] ^ ^-1.05 ^0.7
teleport @s[scores={AnimationProgress=8}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=9}] ^ ^-1.35 ^0.9
teleport @s[scores={AnimationProgress=10}] ^ ^-1.5 ^1
teleport @s[scores={AnimationProgress=11}] ^ ^-1.65 ^1.1
teleport @s[scores={AnimationProgress=12}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=13}] ^ ^-1.95 ^1.3
teleport @s[scores={AnimationProgress=14}] ^ ^-2.1 ^1.4
teleport @s[scores={AnimationProgress=15}] ^ ^-2.25 ^1.5
teleport @s[scores={AnimationProgress=16}] ^ ^-2.3 ^1.6
teleport @s[scores={AnimationProgress=17}] ^ ^-2.45 ^1.7
teleport @s[scores={AnimationProgress=18}] ^ ^-2.6 ^1.8
teleport @s[scores={AnimationProgress=19}] ^ ^-2.75 ^1.9
teleport @s[scores={AnimationProgress=20..121}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=122}] ^ ^-2.75 ^1.9
teleport @s[scores={AnimationProgress=123}] ^ ^-2.6 ^1.8
teleport @s[scores={AnimationProgress=124}] ^ ^-2.45 ^1.7
teleport @s[scores={AnimationProgress=125}] ^ ^-2.3 ^1.6
teleport @s[scores={AnimationProgress=126}] ^ ^-2.25 ^1.5
teleport @s[scores={AnimationProgress=127}] ^ ^-2.1 ^1.4
teleport @s[scores={AnimationProgress=128}] ^ ^-1.95 ^1.3
teleport @s[scores={AnimationProgress=129}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=130}] ^ ^-1.65 ^1.1
teleport @s[scores={AnimationProgress=131}] ^ ^-1.5 ^1
teleport @s[scores={AnimationProgress=132}] ^ ^-1.35 ^0.9
teleport @s[scores={AnimationProgress=133}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=134}] ^ ^-1.05 ^0.7
teleport @s[scores={AnimationProgress=135}] ^ ^-0.9 ^0.6
teleport @s[scores={AnimationProgress=136}] ^ ^-0.75 ^0.5
teleport @s[scores={AnimationProgress=137}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=138}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=139}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=140}] ^ ^-0.15 ^0.1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProgress=41..80}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProgress=81..120}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProgress=121..140}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 15
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=15}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.open_mouth
execute if entity @s[scores={AnimationProgress=125}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0