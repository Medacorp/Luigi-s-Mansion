teleport @e[tag=this_model,tag=nana_rocking_chair] ^ ^-1.85 ^ ~ ~
teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.46 ^-0.2 ^0.1 ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.46 ^-0.2 ^0.1 ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
scoreboard players set @e[tag=this_model,tag=nana_rocking_chair] AnimationProg 0
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=nana_rocking_chair,limit=1] {Pose:{Head:[-10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[0.0f,0.0f,90.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[0.0f,0.0f,-90.0f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..30}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..30}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=120}] AnimationProg 0