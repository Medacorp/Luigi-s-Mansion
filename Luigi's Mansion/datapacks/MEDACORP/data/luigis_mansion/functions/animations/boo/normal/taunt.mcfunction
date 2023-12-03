scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-110.0f,0.0f,90.0f],LeftArm:[-110.0f,0.0f,-90.0f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProgress=4..7}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 6
execute if entity @s[scores={AnimationProgress=9..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 6
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=4..7}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=9..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 10
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=4..7}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=9..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 10
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=1}] HandItems[0].id set from entity @s HandItems[0].tag.luigis_mansion.visible
data modify entity @s[scores={AnimationProgress=1}] HandItems[1].id set from entity @s HandItems[1].tag.luigis_mansion.visible
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0