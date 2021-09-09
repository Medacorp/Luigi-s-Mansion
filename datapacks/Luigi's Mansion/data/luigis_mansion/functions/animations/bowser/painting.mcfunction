scoreboard players add @s AnimationProg 1
teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.25 ^-0.25 ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.45 ^-0.3 ^-0.2 ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.45 ^-0.3 ^-0.2 ~ ~
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[50.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[0.0f,7.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[0.0f,-7.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time