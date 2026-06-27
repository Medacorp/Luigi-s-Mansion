scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~-0.1 ~
teleport @s[scores={AnimationProgress=2}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=3}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=4}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=5}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=7}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=8}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=9}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=10..25}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=26}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=27}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=28}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=29}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=30}] ~ ~-0.2 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 900
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 90
scoreboard players remove @s[scores={AnimationProgress=26..30}] AnimationRotationX 180
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 90
scoreboard players add @s[scores={AnimationProgress=26..30}] AnimationRotationY 180
execute unless score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0