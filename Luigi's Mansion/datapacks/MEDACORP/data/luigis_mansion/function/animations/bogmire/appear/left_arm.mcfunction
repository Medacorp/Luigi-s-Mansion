scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~-2 ~
teleport @s[scores={AnimationProgress=2}] ~ ~-1.9 ~
teleport @s[scores={AnimationProgress=3}] ~ ~-1.8 ~
teleport @s[scores={AnimationProgress=4}] ~ ~-1.7 ~
teleport @s[scores={AnimationProgress=5}] ~ ~-1.6 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-1.5 ~
teleport @s[scores={AnimationProgress=7}] ~ ~-1.4 ~
teleport @s[scores={AnimationProgress=8}] ~ ~-1.3 ~
teleport @s[scores={AnimationProgress=9}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=10}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=11}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=13}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=14}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=15}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=16}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=17}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=18}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=19}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=20}] ~ ~-0.1 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,-90.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=30..}] AnimationProgress 0