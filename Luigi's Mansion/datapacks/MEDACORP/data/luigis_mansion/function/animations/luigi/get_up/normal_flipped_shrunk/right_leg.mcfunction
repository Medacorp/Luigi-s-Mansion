scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..11}] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=12}] ~ ~0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=13}] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=14}] ~ ~0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=15}] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=16}] ~ ~0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=17}] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=18}] ~ ~0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=19}] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=20}] ~ ~0.03 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 50
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationX 90
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 5