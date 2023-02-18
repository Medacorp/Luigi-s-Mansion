teleport @e[tag=this_model,tag=nana_rocking_chair] ^ ^-1.85 ^ ~ ~
teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.46 ^-0.2 ^0.1 ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.46 ^-0.2 ^0.1 ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.01f]}}
scoreboard players set @e[tag=this_model,tag=nana_rocking_chair] Dialog 0
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=nana_rocking_chair,limit=1] {Pose:{Head:[-10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[-40.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-40.0f,0.0f,10.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-40.0f,0.0f,-10.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=4..7}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=9..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0