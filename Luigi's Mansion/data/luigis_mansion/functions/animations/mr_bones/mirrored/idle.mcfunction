scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{LeftArm:[0.0f,-20.0f,160.0f],RightArm:[0.0f,-20.0f,-110.0f],Head:[0.0f,0.0f,-140.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mr_bones_body,limit=1] {Pose:{LeftArm:[-20.0f,0.0f,100.0f],RightArm:[20.0f,0.0f,-30.0f],Head:[-10.0f,-20.0f,-25.0f]}}
teleport @e[tag=this_mr_bones_body,limit=1] ~ ~0.2 ~ ~ ~
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0