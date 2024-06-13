scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..11}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=12}] ^ ^-2.75 ^1.9
teleport @s[scores={AnimationProgress=13}] ^ ^-2.6 ^1.8
teleport @s[scores={AnimationProgress=14}] ^ ^-2.45 ^1.7
teleport @s[scores={AnimationProgress=15}] ^ ^-2.3 ^1.6
teleport @s[scores={AnimationProgress=16}] ^ ^-2.25 ^1.5
teleport @s[scores={AnimationProgress=17}] ^ ^-2.1 ^1.4
teleport @s[scores={AnimationProgress=18}] ^ ^-1.95 ^1.3
teleport @s[scores={AnimationProgress=19}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=20}] ^ ^-1.65 ^1.1
teleport @s[scores={AnimationProgress=21}] ^ ^-1.5 ^1
teleport @s[scores={AnimationProgress=22}] ^ ^-1.35 ^0.9
teleport @s[scores={AnimationProgress=23}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=24}] ^ ^-1.05 ^0.7
teleport @s[scores={AnimationProgress=25}] ^ ^-0.9 ^0.6
teleport @s[scores={AnimationProgress=26}] ^ ^-0.75 ^0.5
teleport @s[scores={AnimationProgress=27}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=28}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=29}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=30}] ^ ^-0.15 ^0.1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProgress=41..60}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 30
execute if entity @s[scores={AnimationProgress=61..80}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=56}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.open_mouth
execute if entity @s[scores={AnimationProgress=64}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0