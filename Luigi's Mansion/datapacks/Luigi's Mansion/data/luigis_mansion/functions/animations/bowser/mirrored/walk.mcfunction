scoreboard players add @s AnimationProgress 1
teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.5 ^-0.5 ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.9 ^-0.6 ^-0.4 ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.9 ^-0.6 ^-0.4 ~ ~
teleport @e[tag=this_model,tag=tail,limit=1] ^ ^-2.1 ^-1.8 ~ ~
teleport @e[tag=this_model,tag=right_leg,limit=1] ^-0.63 ^-2.45 ^-0.7 ~ ~
teleport @e[tag=this_model,tag=left_leg,limit=1] ^0.63 ^-2.45 ^-0.7 ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-70.0f,7.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-70.0f,-7.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.Head[2] 10
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=9..24}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=25..32}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 25
execute if entity @s[scores={AnimationProgress=9..24}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 0.1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProgress=25..32}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 25
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 0.1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProgress=9..24}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 25
execute if entity @s[scores={AnimationProgress=25..32}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 0.1 run scoreboard players add #temp Time 25
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=9}] run playsound luigis_mansion:entity.bowser.walk hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=25}] run playsound luigis_mansion:entity.bowser.walk hostile @a[tag=same_room] ~ ~ ~ 3 0.8
scoreboard players set @s[scores={AnimationProgress=33}] AnimationProgress 0