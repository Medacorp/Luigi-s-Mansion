scoreboard players set @s AnimationProg 0
scoreboard players set @s Time 0
data merge entity @s[tag=!was_flipped] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[tag=was_flipped] {Pose:{Head:[0.0f,0.0f,-180.01f]}}