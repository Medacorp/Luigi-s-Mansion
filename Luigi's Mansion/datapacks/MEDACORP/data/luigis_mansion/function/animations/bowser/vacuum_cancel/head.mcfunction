scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-4 ^2.667
teleport @s[scores={AnimationProgress=2}] ^ ^-3.667 ^2.533
teleport @s[scores={AnimationProgress=3}] ^ ^-3.467 ^2.4
teleport @s[scores={AnimationProgress=4}] ^ ^-3.267 ^2.267
teleport @s[scores={AnimationProgress=5}] ^ ^-3.067 ^2.133
teleport @s[scores={AnimationProgress=6}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=7}] ^ ^-2.8 ^1.867
teleport @s[scores={AnimationProgress=8}] ^ ^-2.6 ^1.733
teleport @s[scores={AnimationProgress=9}] ^ ^-2.4 ^1.6
teleport @s[scores={AnimationProgress=10}] ^ ^-2.2 ^1.467
teleport @s[scores={AnimationProgress=11}] ^ ^-2 ^1.333
teleport @s[scores={AnimationProgress=12}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=13}] ^ ^-1.6 ^1.067
teleport @s[scores={AnimationProgress=14}] ^ ^-1.4 ^0.933
teleport @s[scores={AnimationProgress=15}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=16}] ^ ^-1 ^0.667
teleport @s[scores={AnimationProgress=17}] ^ ^-0.8 ^0.533
teleport @s[scores={AnimationProgress=18}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=19}] ^ ^-0.4 ^0.267
teleport @s[scores={AnimationProgress=20}] ^ ^-0.2 ^0.133
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open_mouth
data modify entity @s[scores={AnimationProgress=5}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0