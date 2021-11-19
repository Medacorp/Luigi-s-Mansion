teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.56 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.56 ^-0.2 ^ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-70.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-70.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=11}] run playsound luigis_mansion:entity.mr_luggs.pant hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0