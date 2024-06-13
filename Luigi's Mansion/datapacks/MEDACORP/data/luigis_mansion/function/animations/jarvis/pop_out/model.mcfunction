scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=..5}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=7}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=8}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=9}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=10}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=11}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=13}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=14}] ~ ~-0.1 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0