scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.happy
teleport @s[scores={AnimationProgress=6}] ~ ~-0.2 ~ ~-18 0
teleport @s[scores={AnimationProgress=7}] ~ ~-0.4 ~ ~-36 0
teleport @s[scores={AnimationProgress=8}] ~ ~-0.6 ~ ~-54 0
teleport @s[scores={AnimationProgress=9}] ~ ~-0.75 ~ ~-72 0
teleport @s[scores={AnimationProgress=10}] ~ ~-0.9 ~ ~-90 0
teleport @s[scores={AnimationProgress=11}] ~ ~-1 ~ ~-108 0
teleport @s[scores={AnimationProgress=12}] ~ ~-1.1 ~ ~-126 0
teleport @s[scores={AnimationProgress=13}] ~ ~-1.15 ~ ~-144 0
teleport @s[scores={AnimationProgress=14}] ~ ~-1.2 ~ ~-162 0
teleport @s[scores={AnimationProgress=15}] ~ ~-1.25 ~ ~-180 0
teleport @s[scores={AnimationProgress=16}] ~ ~-1.2 ~ ~162 0
teleport @s[scores={AnimationProgress=17}] ~ ~-1.15 ~ ~144 0
teleport @s[scores={AnimationProgress=18}] ~ ~-1.1 ~ ~126 0
teleport @s[scores={AnimationProgress=19}] ~ ~-1 ~ ~108 0
teleport @s[scores={AnimationProgress=20}] ~ ~-0.9 ~ ~90 0
teleport @s[scores={AnimationProgress=21}] ~ ~-0.75 ~ ~72 0
teleport @s[scores={AnimationProgress=22}] ~ ~-0.6 ~ ~54 0
teleport @s[scores={AnimationProgress=23}] ~ ~-0.4 ~ ~36 0
teleport @s[scores={AnimationProgress=24}] ~ ~-0.2 ~ ~18 0
scoreboard players add @s[scores={AnimationProgress=51..60}] AnimationRotationX 1
scoreboard players remove @s[scores={AnimationProgress=61..70}] AnimationRotationX 1
scoreboard players add @s[scores={AnimationProgress=71..80}] AnimationRotationX 1
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 60