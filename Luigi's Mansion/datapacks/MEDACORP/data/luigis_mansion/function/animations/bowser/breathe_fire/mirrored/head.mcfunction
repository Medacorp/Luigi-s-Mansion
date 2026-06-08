scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-0.2 ^0.133
teleport @s[scores={AnimationProgress=2}] ^ ^-0.4 ^0.267
teleport @s[scores={AnimationProgress=3}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=4}] ^ ^-0.8 ^0.533
teleport @s[scores={AnimationProgress=5}] ^ ^-1 ^0.667
teleport @s[scores={AnimationProgress=6}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=7}] ^ ^-1.4 ^0.933
teleport @s[scores={AnimationProgress=8}] ^ ^-1.6 ^1.067
teleport @s[scores={AnimationProgress=9}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=10}] ^ ^-2 ^1.333
teleport @s[scores={AnimationProgress=11}] ^ ^-2.2 ^1.467
teleport @s[scores={AnimationProgress=12}] ^ ^-2.4 ^1.6
teleport @s[scores={AnimationProgress=13}] ^ ^-2.6 ^1.733
teleport @s[scores={AnimationProgress=14}] ^ ^-2.8 ^1.867
teleport @s[scores={AnimationProgress=15}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=16}] ^ ^-3.067 ^2.133
teleport @s[scores={AnimationProgress=17}] ^ ^-3.267 ^2.267
teleport @s[scores={AnimationProgress=18}] ^ ^-3.467 ^2.4
teleport @s[scores={AnimationProgress=19}] ^ ^-3.667 ^2.533
teleport @s[scores={AnimationProgress=20..121}] ^ ^-4 ^2.667
teleport @s[scores={AnimationProgress=122}] ^ ^-3.667 ^2.533
teleport @s[scores={AnimationProgress=123}] ^ ^-3.467 ^2.4
teleport @s[scores={AnimationProgress=124}] ^ ^-3.267 ^2.267
teleport @s[scores={AnimationProgress=125}] ^ ^-3.067 ^2.133
teleport @s[scores={AnimationProgress=126}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=127}] ^ ^-2.8 ^1.867
teleport @s[scores={AnimationProgress=128}] ^ ^-2.6 ^1.733
teleport @s[scores={AnimationProgress=129}] ^ ^-2.4 ^1.6
teleport @s[scores={AnimationProgress=130}] ^ ^-2.2 ^1.467
teleport @s[scores={AnimationProgress=131}] ^ ^-2 ^1.333
teleport @s[scores={AnimationProgress=132}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=133}] ^ ^-1.6 ^1.067
teleport @s[scores={AnimationProgress=134}] ^ ^-1.4 ^0.933
teleport @s[scores={AnimationProgress=135}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=136}] ^ ^-1 ^0.667
teleport @s[scores={AnimationProgress=137}] ^ ^-0.8 ^0.533
teleport @s[scores={AnimationProgress=138}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=139}] ^ ^-0.4 ^0.267
teleport @s[scores={AnimationProgress=140}] ^ ^-0.2 ^0.133
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players add @s[scores={AnimationProgress=21..40}] AnimationRotationY 15
scoreboard players remove @s[scores={AnimationProgress=41..80}] AnimationRotationY 15
scoreboard players add @s[scores={AnimationProgress=81..120}] AnimationRotationY 15
scoreboard players remove @s[scores={AnimationProgress=121..140}] AnimationRotationY 15
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.closed_eyes
execute if entity @s[scores={AnimationProgress=15}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open_mouth
execute if entity @s[scores={AnimationProgress=125}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0