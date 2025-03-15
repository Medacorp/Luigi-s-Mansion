scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..11}] ^ ^-4 ^2.667
teleport @s[scores={AnimationProgress=12}] ^ ^-3.667 ^2.533
teleport @s[scores={AnimationProgress=13}] ^ ^-3.467 ^2.4
teleport @s[scores={AnimationProgress=14}] ^ ^-3.267 ^2.267
teleport @s[scores={AnimationProgress=15}] ^ ^-3.067 ^2.133
teleport @s[scores={AnimationProgress=16}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=17}] ^ ^-2.8 ^1.867
teleport @s[scores={AnimationProgress=18}] ^ ^-2.6 ^1.733
teleport @s[scores={AnimationProgress=19}] ^ ^-2.4 ^1.6
teleport @s[scores={AnimationProgress=20}] ^ ^-2.2 ^1.467
teleport @s[scores={AnimationProgress=21}] ^ ^-2 ^1.333
teleport @s[scores={AnimationProgress=22}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=23}] ^ ^-1.6 ^1.067
teleport @s[scores={AnimationProgress=24}] ^ ^-1.4 ^0.933
teleport @s[scores={AnimationProgress=25}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=26}] ^ ^-1 ^0.667
teleport @s[scores={AnimationProgress=27}] ^ ^-0.8 ^0.533
teleport @s[scores={AnimationProgress=28}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=29}] ^ ^-0.4 ^0.267
teleport @s[scores={AnimationProgress=30}] ^ ^-0.2 ^0.133
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProgress=41..60}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 30
execute if entity @s[scores={AnimationProgress=61..80}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=56}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open_mouth
execute if entity @s[scores={AnimationProgress=64}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0