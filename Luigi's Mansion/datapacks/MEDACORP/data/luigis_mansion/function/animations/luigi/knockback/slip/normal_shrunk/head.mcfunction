scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~-0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=2}] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=3}] ~ ~-0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=4}] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=5}] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=6}] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=7}] ~ ~-0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=8}] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=9}] ~ ~-0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=10..}] ~ ~-0.3 ~ ~ ~
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0