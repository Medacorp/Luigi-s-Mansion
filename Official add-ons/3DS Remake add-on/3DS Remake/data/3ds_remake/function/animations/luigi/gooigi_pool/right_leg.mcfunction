scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=11..20}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
scoreboard players reset #temp Time
teleport @s[tag=!flipped_gravity] ^ ^-0.7 ^0.3
teleport @s[tag=flipped_gravity] ^ ^0.7 ^0.3
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0