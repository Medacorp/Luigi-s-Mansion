scoreboard players set @s AnimationProg 0
scoreboard players set @s Pull 0
scoreboard players set @s ScareTime 0
scoreboard players set @s Time 0
tag @s remove was_sneak_posing
data merge entity @s[tag=!was_flipped] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[tag=was_flipped] {Pose:{Head:[0.0f,0.0f,-180.01f]}}