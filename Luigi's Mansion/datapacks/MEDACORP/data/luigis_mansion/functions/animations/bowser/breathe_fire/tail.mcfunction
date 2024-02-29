scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^0.05 ^0.0375
teleport @s[scores={AnimationProgress=2}] ^ ^0.1 ^0.075
teleport @s[scores={AnimationProgress=3}] ^ ^0.15 ^0.1125
teleport @s[scores={AnimationProgress=4}] ^ ^0.2 ^0.15
teleport @s[scores={AnimationProgress=5}] ^ ^0.25 ^0.1875
teleport @s[scores={AnimationProgress=6}] ^ ^0.3 ^0.225
teleport @s[scores={AnimationProgress=7}] ^ ^0.35 ^0.2625
teleport @s[scores={AnimationProgress=8}] ^ ^0.4 ^0.3
teleport @s[scores={AnimationProgress=9}] ^ ^0.45 ^0.3375
teleport @s[scores={AnimationProgress=10}] ^ ^0.5 ^0.375
teleport @s[scores={AnimationProgress=11}] ^ ^0.55 ^0.4125
teleport @s[scores={AnimationProgress=12}] ^ ^0.6 ^0.45
teleport @s[scores={AnimationProgress=13}] ^ ^0.65 ^0.4875
teleport @s[scores={AnimationProgress=14}] ^ ^0.7 ^0.525
teleport @s[scores={AnimationProgress=15}] ^ ^0.75 ^0.5625
teleport @s[scores={AnimationProgress=16}] ^ ^0.8 ^0.6
teleport @s[scores={AnimationProgress=17}] ^ ^0.85 ^0.6375
teleport @s[scores={AnimationProgress=18}] ^ ^0.9 ^0.675
teleport @s[scores={AnimationProgress=19}] ^ ^0.95 ^0.7125
teleport @s[scores={AnimationProgress=20..120}] ^ ^0.1 ^0.75
teleport @s[scores={AnimationProgress=121}] ^ ^0.95 ^0.7125
teleport @s[scores={AnimationProgress=122}] ^ ^0.9 ^0.675
teleport @s[scores={AnimationProgress=123}] ^ ^0.85 ^0.6375
teleport @s[scores={AnimationProgress=124}] ^ ^0.8 ^0.6
teleport @s[scores={AnimationProgress=125}] ^ ^0.75 ^0.5625
teleport @s[scores={AnimationProgress=126}] ^ ^0.7 ^0.525
teleport @s[scores={AnimationProgress=127}] ^ ^0.65 ^0.4875
teleport @s[scores={AnimationProgress=128}] ^ ^0.6 ^0.45
teleport @s[scores={AnimationProgress=129}] ^ ^0.55 ^0.4125
teleport @s[scores={AnimationProgress=130}] ^ ^0.5 ^0.375
teleport @s[scores={AnimationProgress=131}] ^ ^0.45 ^0.3375
teleport @s[scores={AnimationProgress=132}] ^ ^0.4 ^0.3
teleport @s[scores={AnimationProgress=133}] ^ ^0.35 ^0.2625
teleport @s[scores={AnimationProgress=134}] ^ ^0.3 ^0.225
teleport @s[scores={AnimationProgress=135}] ^ ^0.25 ^0.1875
teleport @s[scores={AnimationProgress=136}] ^ ^0.2 ^0.15
teleport @s[scores={AnimationProgress=137}] ^ ^0.15 ^0.1125
teleport @s[scores={AnimationProgress=138}] ^ ^0.1 ^0.075
teleport @s[scores={AnimationProgress=139}] ^ ^0.05 ^0.0375
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #2 Constants
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players reset #temp AnimationProgress
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0