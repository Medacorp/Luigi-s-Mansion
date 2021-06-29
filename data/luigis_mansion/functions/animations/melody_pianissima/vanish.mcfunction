teleport @e[tag=this_model,tag=melody_pianissima_body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=melody_pianissima_body,limit=1] {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] {Pose:{Head:[0.0f,0.0f,90.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] {Pose:{Head:[0.0f,0.0f,-90.0f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..30}] store result entity @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..30}] store result entity @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] Pose.Head[2] float 1 run scoreboard players add #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=120}] AnimationProg 0