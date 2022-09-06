scoreboard players set @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[20.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[20.0f,0.0f,-180.0f]}}