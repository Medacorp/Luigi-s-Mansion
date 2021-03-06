scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-40.0f,20.0f,0.0f],LeftArm:[-40.0f,-20.0f,0.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=5..12}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=13..16}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=5..12}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=13..16}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=16}] AnimationProg 0