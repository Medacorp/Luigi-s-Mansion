scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=1}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.5 ^-0.5 ~ ~
execute at @s[scores={AnimationProgress=1}] run teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.9 ^-0.6 ^-0.4 ~ ~
execute at @s[scores={AnimationProgress=1}] run teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.9 ^-0.6 ^-0.4 ~ ~
execute at @s[scores={AnimationProgress=1}] run teleport @e[tag=this_model,tag=tail,limit=1] ^ ^-2.1 ^-1.8 ~ ~
execute at @s[scores={AnimationProgress=1}] run teleport @e[tag=this_model,tag=right_leg,limit=1] ^-0.63 ^-2.45 ^-0.7 ~ ~
execute at @s[scores={AnimationProgress=1}] run teleport @e[tag=this_model,tag=left_leg,limit=1] ^0.63 ^-2.45 ^-0.7 ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-70.0f,7.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-70.0f,-7.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 7
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 7
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 14
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 0.1 run scoreboard players add #temp Time 14
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 0.1 run scoreboard players add #temp Time 14
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 14
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0