scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,-50.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-90.0f,-50.0f,-180.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0