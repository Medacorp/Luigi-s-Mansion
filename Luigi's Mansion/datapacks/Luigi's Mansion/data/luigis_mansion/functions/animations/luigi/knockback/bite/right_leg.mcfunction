scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,30.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-70.0f,30.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..8}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=9..16}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..4}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=5..8}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=9..12}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=13..16}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProgress=16}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProgress=16},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=16}] {Pose:{Head:[-70.0f,30.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=16},tag=flipped_gravity] {Pose:{Head:[-70.0f,30.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0