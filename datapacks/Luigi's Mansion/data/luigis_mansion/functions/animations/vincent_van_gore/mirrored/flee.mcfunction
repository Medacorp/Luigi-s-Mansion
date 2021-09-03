teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-160.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=4..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 28
execute if entity @s[scores={AnimationProg=6..10}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 28
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1]
execute if entity @s[scores={AnimationProg=6..7}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 20
execute if entity @s[scores={AnimationProg=9..10}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 20
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 28
execute if entity @s[scores={AnimationProg=6..10}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 28
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 20
execute if entity @s[scores={AnimationProg=4..5}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 20
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=10..}] AnimationProg 0