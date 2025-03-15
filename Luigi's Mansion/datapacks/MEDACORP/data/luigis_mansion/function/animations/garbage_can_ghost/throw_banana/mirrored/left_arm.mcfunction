scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-40.0f,-20.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=20..25}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 7
execute if entity @s[scores={AnimationProgress=30..35}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 7
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=20..25}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 14
execute if entity @s[scores={AnimationProgress=30..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 14
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.bananas
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0