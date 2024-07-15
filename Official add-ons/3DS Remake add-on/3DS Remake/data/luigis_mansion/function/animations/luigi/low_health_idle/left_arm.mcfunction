execute unless score #mirrored Selected matches 1 run data merge entity @s[tag=!flipped_gravity] {Pose:{Head:[-10.0f,110.0f,0.01f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[tag=flipped_gravity] {Pose:{Head:[-10.0f,110.0f,-180.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[tag=!flipped_gravity] {Pose:{Head:[-10.0f,0.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[tag=flipped_gravity] {Pose:{Head:[-10.0f,0.0f,-180.0f]}}
scoreboard players set @s AnimationProgress 1