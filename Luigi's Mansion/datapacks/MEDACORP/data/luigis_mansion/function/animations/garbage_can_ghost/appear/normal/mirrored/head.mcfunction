scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~2 ~ ~80 ~
teleport @s[scores={AnimationProgress=2}] ~ ~1.8 ~ ~72 ~
teleport @s[scores={AnimationProgress=3}] ~ ~1.6 ~ ~64 ~
teleport @s[scores={AnimationProgress=4}] ~ ~1.4 ~ ~56 ~
teleport @s[scores={AnimationProgress=5}] ~ ~1.2 ~ ~48 ~
teleport @s[scores={AnimationProgress=6}] ~ ~1 ~ ~40 ~
teleport @s[scores={AnimationProgress=7}] ~ ~0.8 ~ ~32 ~
teleport @s[scores={AnimationProgress=8}] ~ ~0.6 ~ ~24 ~
teleport @s[scores={AnimationProgress=9}] ~ ~0.4 ~ ~16 ~
teleport @s[scores={AnimationProgress=10}] ~ ~0.2 ~ ~8 ~
teleport @s[scores={AnimationProgress=12}] ~ ~0.4 ~
teleport @s[scores={AnimationProgress=13}] ~ ~0.8 ~
teleport @s[scores={AnimationProgress=14}] ~ ~0.4 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
