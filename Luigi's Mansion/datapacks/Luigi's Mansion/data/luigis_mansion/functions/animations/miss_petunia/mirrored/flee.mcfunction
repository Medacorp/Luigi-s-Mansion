teleport @e[tag=this_model,tag=!miss_petunia_shadow,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=!miss_petunia_shadow,tag=right_arm,limit=1] ^-0.56 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=!miss_petunia_shadow,tag=left_arm,limit=1] ^0.56 ^-0.2 ^ ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=body,limit=1] {Pose:{Head:[20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=right_arm,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=left_arm,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProgress=3..6}] store result entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProgress=7..8}] store result entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute store result score #temp Time run data get entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProgress=3..6}] store result entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProgress=7..8}] store result entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 15
execute store result score #temp Time run data get entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=4..8}] store result entity @e[tag=this_model,tag=!miss_petunia_shadow,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0