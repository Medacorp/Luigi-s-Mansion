scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=..37}] run particle minecraft:falling_water ~ ~1.6 ~ 0.1 0.1 0.1 0 2 normal @a[tag=same_room]
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,-20.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,160.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=40}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=40},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0