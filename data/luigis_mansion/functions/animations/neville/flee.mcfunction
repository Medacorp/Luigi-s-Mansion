teleport @e[tag=this_model,tag=neville_body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=neville_right_arm,limit=1] ^-0.48 ^ ^ ~ ~
teleport @e[tag=this_model,tag=neville_left_arm,limit=1] ^0.48 ^ ^ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=neville_body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=neville_right_arm,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=neville_left_arm,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=neville_right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..8}] store result entity @e[tag=this_model,tag=neville_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=9..16}] store result entity @e[tag=this_model,tag=neville_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_model,tag=neville_left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..8}] store result entity @e[tag=this_model,tag=neville_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=9..16}] store result entity @e[tag=this_model,tag=neville_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=9..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=neville_body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..8}] store result entity @e[tag=this_model,tag=neville_body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=9..16}] store result entity @e[tag=this_model,tag=neville_body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProg=16..}] AnimationProg 0