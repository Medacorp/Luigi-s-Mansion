teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^0.35 ^ ^0.1 ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^-0.35 ^ ^0.1 ~ ~
scoreboard players add @s AnimationProgress 1
data modify entity @s[tag=visible] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[-90.0f,0.0f,180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-130.0f,-40.0f,180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-130.0f,40.0f,180.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=5..12}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0