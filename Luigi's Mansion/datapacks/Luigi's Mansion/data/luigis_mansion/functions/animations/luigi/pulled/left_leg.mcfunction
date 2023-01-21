scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 7
scoreboard players reset #temp Time
teleport @s[scores={AnimationProg=10..}] ~ ~-0.3 ~
data merge entity @s[scores={AnimationProg=11}] {Pose:{Head:[70.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=11},tag=flipped_gravity] {Pose:{Head:[70.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProg=30..}] AnimationProg 10