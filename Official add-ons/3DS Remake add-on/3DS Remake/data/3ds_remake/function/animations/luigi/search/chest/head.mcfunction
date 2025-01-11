scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[20.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[20.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0