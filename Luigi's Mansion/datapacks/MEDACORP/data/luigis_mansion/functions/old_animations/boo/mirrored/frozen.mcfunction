scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-20.0f,0.0f,90.0f],LeftArm:[-20.0f,0.0f,-90.0f],Head:[0.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[2] 10
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.RightArm[2] float 0.1 run scoreboard players remove #temp Time 25
execute if entity @s[scores={AnimationProgress=5..12}] store result entity @s Pose.RightArm[2] float 0.1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.RightArm[2] float 0.1 run scoreboard players remove #temp Time 25
execute store result score #temp Time run data get entity @s Pose.LeftArm[2] 10
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.LeftArm[2] float 0.1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProgress=5..12}] store result entity @s Pose.LeftArm[2] float 0.1 run scoreboard players remove #temp Time 25
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.LeftArm[2] float 0.1 run scoreboard players add #temp Time 25
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=1}] HandItems[0].id set from entity @s HandItems[0].tag.luigis_mansion.visible
data modify entity @s[scores={AnimationProgress=1}] HandItems[1].id set from entity @s HandItems[1].tag.luigis_mansion.visible
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0