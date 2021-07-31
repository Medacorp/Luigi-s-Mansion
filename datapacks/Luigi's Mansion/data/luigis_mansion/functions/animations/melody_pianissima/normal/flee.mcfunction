teleport @e[tag=this_model,tag=melody_pianissima_body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=melody_pianissima_body,limit=1] {Pose:{Head:[20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProg=3..6}] store result entity @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=7..8}] store result entity @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 15
execute store result score #temp Time run data get entity @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=3..6}] store result entity @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProg=7..8}] store result entity @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute store result score #temp Time run data get entity @e[tag=this_model,tag=melody_pianissima_body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @e[tag=this_model,tag=melody_pianissima_body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=4..8}] store result entity @e[tag=this_model,tag=melody_pianissima_body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=8..}] AnimationProg 0