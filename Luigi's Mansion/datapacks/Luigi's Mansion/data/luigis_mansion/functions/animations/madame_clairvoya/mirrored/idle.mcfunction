teleport @s ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[-10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=11..30}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=11..30}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0