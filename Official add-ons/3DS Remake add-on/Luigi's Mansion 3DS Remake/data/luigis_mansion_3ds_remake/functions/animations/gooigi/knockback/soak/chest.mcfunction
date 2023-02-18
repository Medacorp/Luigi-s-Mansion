scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=..37}] run particle minecraft:falling_water ~ ~1.6 ~ 0.1 0.1 0.1 0 2 normal @a[tag=same_room]
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0