scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=2}] ^ ^-2.75 ^1.9
teleport @s[scores={AnimationProgress=3}] ^ ^-2.6 ^1.8
teleport @s[scores={AnimationProgress=4}] ^ ^-2.45 ^1.7
teleport @s[scores={AnimationProgress=5}] ^ ^-2.3 ^1.6
teleport @s[scores={AnimationProgress=6}] ^ ^-2.25 ^1.5
teleport @s[scores={AnimationProgress=7}] ^ ^-2.1 ^1.4
teleport @s[scores={AnimationProgress=8}] ^ ^-1.95 ^1.3
teleport @s[scores={AnimationProgress=9}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=10}] ^ ^-1.65 ^1.1
teleport @s[scores={AnimationProgress=11}] ^ ^-1.5 ^1
teleport @s[scores={AnimationProgress=12}] ^ ^-1.35 ^0.9
teleport @s[scores={AnimationProgress=13}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=14}] ^ ^-1.05 ^0.7
teleport @s[scores={AnimationProgress=15}] ^ ^-0.9 ^0.6
teleport @s[scores={AnimationProgress=16}] ^ ^-0.75 ^0.5
teleport @s[scores={AnimationProgress=17}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=18}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=49}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=20}] ^ ^-0.15 ^0.1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 55
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 20
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.open_mouth
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0