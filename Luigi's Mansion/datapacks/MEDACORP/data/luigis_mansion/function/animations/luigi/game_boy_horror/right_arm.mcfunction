scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-50.0f,-25.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-50.0f,-25.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0