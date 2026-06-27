scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..11}] ~ ~-0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=13}] ~ ~-0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=14}] ~ ~-0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=15}] ~ ~-0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=16}] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=17}] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=18}] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=19}] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=20}] ~ ~-0.06 ~ ~ ~
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationY 100
scoreboard players remove @s[scores={AnimationProgress=3..6}] AnimationRotationY 100
scoreboard players add @s[scores={AnimationProgress=7..10}] AnimationRotationY 100
scoreboard players remove @s[scores={AnimationProgress=11..14}] AnimationRotationY 100
scoreboard players add @s[scores={AnimationProgress=15..18}] AnimationRotationY 100
scoreboard players remove @s[scores={AnimationProgress=19..20}] AnimationRotationY 100