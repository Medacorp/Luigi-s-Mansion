scoreboard players operation @s AnimationProgress = @a[tag=this_luigi,limit=1] IdleTime
scoreboard players add @s AnimationProgress 41
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
data merge entity @s[scores={AnimationProgress=21}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=21},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}