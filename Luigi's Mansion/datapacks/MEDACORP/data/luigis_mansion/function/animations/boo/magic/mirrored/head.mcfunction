scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-14.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=106..120}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=21..39}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 40
execute if entity @s[scores={AnimationProgress=40..101}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 45
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.attacking
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0