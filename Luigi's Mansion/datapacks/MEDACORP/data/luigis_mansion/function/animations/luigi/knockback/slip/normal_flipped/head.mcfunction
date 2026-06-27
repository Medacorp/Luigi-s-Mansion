scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1},tag=!shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=!shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=!shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=!shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=5},tag=!shrunk] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=6},tag=!shrunk] ~ ~0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=7},tag=!shrunk] ~ ~0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=8},tag=!shrunk] ~ ~0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=9},tag=!shrunk] ~ ~0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=10..},tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=1},tag=shrunk] ~ ~0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=shrunk] ~ ~0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=5},tag=shrunk] ~ ~0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=6},tag=shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=7},tag=shrunk] ~ ~0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=8},tag=shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=9},tag=shrunk] ~ ~0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=10..},tag=shrunk] ~ ~0.3 ~ ~ ~
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0