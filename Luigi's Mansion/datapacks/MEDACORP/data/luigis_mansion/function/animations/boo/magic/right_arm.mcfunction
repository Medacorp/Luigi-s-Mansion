scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,90.0f]}}
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.attacking
scoreboard players set @s[scores={AnimationProgress=160}] AnimationProgress 0
execute store result entity @s Pose.Head[1] float -0.01 run data get entity @e[tag=this_entity,limit=1] Rotation[1] 100