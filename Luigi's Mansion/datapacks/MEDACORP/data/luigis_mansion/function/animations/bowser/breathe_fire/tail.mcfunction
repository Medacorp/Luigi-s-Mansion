scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^0.067 ^0.05
teleport @s[scores={AnimationProgress=2}] ^ ^0.133 ^0.1
teleport @s[scores={AnimationProgress=3}] ^ ^0.2 ^0.15
teleport @s[scores={AnimationProgress=4}] ^ ^0.267 ^0.2
teleport @s[scores={AnimationProgress=5}] ^ ^0.333 ^0.25
teleport @s[scores={AnimationProgress=6}] ^ ^0.4 ^0.3
teleport @s[scores={AnimationProgress=7}] ^ ^0.467 ^0.35
teleport @s[scores={AnimationProgress=8}] ^ ^0.533 ^0.4
teleport @s[scores={AnimationProgress=9}] ^ ^0.6 ^0.45
teleport @s[scores={AnimationProgress=10}] ^ ^0.667 ^0.5
teleport @s[scores={AnimationProgress=11}] ^ ^0.733 ^0.55
teleport @s[scores={AnimationProgress=12}] ^ ^0.8 ^0.6
teleport @s[scores={AnimationProgress=13}] ^ ^0.867 ^0.65
teleport @s[scores={AnimationProgress=14}] ^ ^0.933 ^0.7
teleport @s[scores={AnimationProgress=15}] ^ ^1 ^0.75
teleport @s[scores={AnimationProgress=16}] ^ ^1.067 ^0.8
teleport @s[scores={AnimationProgress=17}] ^ ^1.133 ^0.85
teleport @s[scores={AnimationProgress=18}] ^ ^1.2 ^0.9
teleport @s[scores={AnimationProgress=19}] ^ ^1.267 ^0.95
teleport @s[scores={AnimationProgress=20..120}] ^ ^0.133 ^1
teleport @s[scores={AnimationProgress=121}] ^ ^1.267 ^0.95
teleport @s[scores={AnimationProgress=122}] ^ ^1.2 ^0.9
teleport @s[scores={AnimationProgress=123}] ^ ^1.133 ^0.85
teleport @s[scores={AnimationProgress=124}] ^ ^1.067 ^0.8
teleport @s[scores={AnimationProgress=125}] ^ ^1 ^0.75
teleport @s[scores={AnimationProgress=126}] ^ ^0.933 ^0.7
teleport @s[scores={AnimationProgress=127}] ^ ^0.867 ^0.65
teleport @s[scores={AnimationProgress=128}] ^ ^0.8 ^0.6
teleport @s[scores={AnimationProgress=129}] ^ ^0.733 ^0.55
teleport @s[scores={AnimationProgress=130}] ^ ^0.667 ^0.5
teleport @s[scores={AnimationProgress=131}] ^ ^0.6 ^0.45
teleport @s[scores={AnimationProgress=132}] ^ ^0.533 ^0.4
teleport @s[scores={AnimationProgress=133}] ^ ^0.467 ^0.35
teleport @s[scores={AnimationProgress=134}] ^ ^0.4 ^0.3
teleport @s[scores={AnimationProgress=135}] ^ ^0.333 ^0.25
teleport @s[scores={AnimationProgress=136}] ^ ^0.267 ^0.2
teleport @s[scores={AnimationProgress=137}] ^ ^0.2 ^0.15
teleport @s[scores={AnimationProgress=138}] ^ ^0.133 ^0.1
teleport @s[scores={AnimationProgress=139}] ^ ^0.067 ^0.05
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #2 Constants
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players reset #temp AnimationProgress
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0