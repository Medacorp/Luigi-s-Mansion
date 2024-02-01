scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=..37}] run particle minecraft:falling_water ~ ~1.8 ~ 0.2 0.1 0.2 0 2 normal @a[tag=same_room]
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=31..32}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=34..37}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=39..40}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=31..32}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=34..37}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=39..40}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=40}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=40},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0
tag @s add dark_room_head