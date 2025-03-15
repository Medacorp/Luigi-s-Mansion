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
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=26..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0