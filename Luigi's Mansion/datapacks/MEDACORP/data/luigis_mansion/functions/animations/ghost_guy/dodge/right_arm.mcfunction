scoreboard players add @s AnimationProgress 1
teleport @s[scores={ActionTime=1}] ~ ~-0.1 ~
teleport @s[scores={ActionTime=2}] ~ ~-0.2 ~
teleport @s[scores={ActionTime=3}] ~ ~-0.3 ~
teleport @s[scores={ActionTime=4}] ~ ~-0.4 ~
teleport @s[scores={ActionTime=5}] ~ ~-0.5 ~
teleport @s[scores={ActionTime=6}] ~ ~-0.6 ~
teleport @s[scores={ActionTime=7}] ~ ~-0.7 ~
teleport @s[scores={ActionTime=8}] ~ ~-0.8 ~
teleport @s[scores={ActionTime=9}] ~ ~-0.9 ~
teleport @s[scores={ActionTime=10..25}] ~ ~-1 ~
teleport @s[scores={ActionTime=26}] ~ ~-1 ~
teleport @s[scores={ActionTime=27}] ~ ~-0.8 ~
teleport @s[scores={ActionTime=28}] ~ ~-0.6 ~
teleport @s[scores={ActionTime=29}] ~ ~-0.4 ~
teleport @s[scores={ActionTime=30}] ~ ~-0.2 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,90.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=26..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProgress=26..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
execute if score #mirrored Selected matches 0 run data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0