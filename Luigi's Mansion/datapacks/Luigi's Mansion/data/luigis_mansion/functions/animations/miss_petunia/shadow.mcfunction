teleport @s ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=miss_petunia_shadow,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=miss_petunia_shadow,tag=right_arm,limit=1] ~ ~-0.2 ~ ~ ~
teleport @e[tag=this_model,tag=miss_petunia_shadow,tag=left_arm,limit=1] ~ ~-0.2 ~ ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=miss_petunia_shadow,tag=body,limit=1] {Pose:{Head:[-5.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=miss_petunia_shadow,tag=right_arm,limit=1] {Pose:{Head:[-140.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=miss_petunia_shadow,tag=left_arm,limit=1] {Pose:{Head:[-140.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=miss_petunia_shadow,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @e[tag=this_model,tag=miss_petunia_shadow,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @e[tag=this_model,tag=miss_petunia_shadow,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @e[tag=this_model,tag=miss_petunia_shadow,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute store result score #temp Time run data get entity @e[tag=this_model,tag=miss_petunia_shadow,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @e[tag=this_model,tag=miss_petunia_shadow,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @e[tag=this_model,tag=miss_petunia_shadow,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @e[tag=this_model,tag=miss_petunia_shadow,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0