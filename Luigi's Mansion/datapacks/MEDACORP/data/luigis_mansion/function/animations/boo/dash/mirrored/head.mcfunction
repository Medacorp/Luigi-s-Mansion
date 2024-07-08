scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.attacking
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
data modify entity @s Pose.Head[0] set from entity @e[tag=this_entity,limit=1] Rotation[1]