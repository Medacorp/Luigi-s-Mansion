scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=6}] ~ ~0.05 ~ ~ ~
teleport @s[scores={AnimationProgress=7}] ~ ~0.1 ~ ~ ~
teleport @s[scores={AnimationProgress=8}] ~ ~0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=9}] ~ ~0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=10}] ~ ~0.25 ~ ~ ~
teleport @s[scores={AnimationProgress=11..20}] ~ ~0.3 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 150
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0