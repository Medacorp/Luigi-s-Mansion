scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0