scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,90.0f]}}
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.frozen
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
execute store result entity @s Pose.Head[1] float -0.01 run data get entity @e[tag=this_entity,limit=1] Rotation[1] 100