scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~-2.6 ~
teleport @s[scores={AnimationProgress=2}] ~ ~-2.4 ~
teleport @s[scores={AnimationProgress=3}] ~ ~-2.2 ~
teleport @s[scores={AnimationProgress=4}] ~ ~-2 ~
teleport @s[scores={AnimationProgress=5}] ~ ~-1.8 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-1.6 ~
teleport @s[scores={AnimationProgress=7}] ~ ~-1.4 ~
teleport @s[scores={AnimationProgress=8}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=9}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=10}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=11}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=13}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=14}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=15..}] ~ ~-0.6 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,20.0f,-160.0f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0