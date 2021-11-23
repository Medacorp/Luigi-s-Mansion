scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..55}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
execute at @s[scores={AnimationProg=1..45}] run particle minecraft:smoke ~ ~1.8 ~ 0.2 0.2 0.2 0 3 normal @a[tag=same_room]
data merge entity @s[scores={AnimationProg=60}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=60},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProg=60..}] AnimationProg 0