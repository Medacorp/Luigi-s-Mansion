scoreboard players add @s AnimationProgress 1
teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.7 ^-0.6 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.9 ^-0.1 ^0.1 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.9 ^-0.1 ^0.1 ~ ~
#teleport @e[tag=this_model,tag=tail,limit=1] ^ ^-2.1 ^-1.8 ~ ~
#teleport @e[tag=this_model,tag=right_leg,limit=1] ^-0.63 ^-2.45 ^-0.7 ~ ~
#teleport @e[tag=this_model,tag=left_leg,limit=1] ^0.63 ^-2.45 ^-0.7 ~ ~
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #2 Constants
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[80.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-70.0f,7.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-70.0f,-7.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..2}] if score #temp AnimationProgress matches 0 store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=1..2}] if score #temp AnimationProgress matches 1 store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..2}] if score #temp AnimationProgress matches 0 store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=1..2}] if score #temp AnimationProgress matches 1 store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..2}] if score #temp AnimationProgress matches 0 store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=1..2}] if score #temp AnimationProgress matches 1 store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..2}] if score #temp AnimationProgress matches 0 store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=1..2}] if score #temp AnimationProgress matches 1 store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players reset #temp AnimationProgress
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0