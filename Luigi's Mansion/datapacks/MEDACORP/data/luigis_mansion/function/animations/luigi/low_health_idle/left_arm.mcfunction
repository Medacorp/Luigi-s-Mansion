data merge entity @s[tag=!flipped_gravity] {Pose:{Head:[-10.0f,110.0f,0.01f]}}
data merge entity @s[tag=flipped_gravity] {Pose:{Head:[-10.0f,110.0f,-180.0f]}}
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0