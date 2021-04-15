scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,20.0f,-160.0f],LeftArm:[0.0f,20.0f,110.0f],Head:[0.0f,0.0f,140.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mr_bones_body,limit=1] {Pose:{RightArm:[-20.0f,0.0f,-100.0f],LeftArm:[20.0f,0.0f,30.0f],Head:[-10.0f,20.0f,25.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=4..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=10..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
teleport @e[tag=this_mr_bones_body,limit=1] ~ ~0.2 ~ ~ ~
scoreboard players set @s[scores={AnimationProg=12}] AnimationProg 0