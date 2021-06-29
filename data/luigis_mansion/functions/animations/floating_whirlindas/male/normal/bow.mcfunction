teleport @e[tag=this_model,tag=floating_whirlindas_body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=floating_whirlindas_left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=floating_whirlindas_body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] {Pose:{Head:[0.0f,0.01f,90.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=floating_whirlindas_left_arm,limit=1] {Pose:{Head:[0.0f,0.01f,-90.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=101..120}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=21..40}] store result entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProg=101..120}] store result entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[2]
execute if entity @s[scores={AnimationProg=21..40}] store result entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=101..120}] store result entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[1]
execute if entity @s[scores={AnimationProg=21..40}] store result entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProg=101..120}] store result entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute store result score #temp Time run data get entity @e[tag=this_model,tag=floating_whirlindas_left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=floating_whirlindas_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=21..40}] store result entity @e[tag=this_model,tag=floating_whirlindas_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @e[tag=this_model,tag=floating_whirlindas_left_arm,limit=1] Pose.Head[1]
execute if entity @s[scores={AnimationProg=21..40}] store result entity @e[tag=this_model,tag=floating_whirlindas_left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProg=101..120}] store result entity @e[tag=this_model,tag=floating_whirlindas_left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 3
scoreboard players set @s[scores={AnimationProg=120..}] AnimationProg 0