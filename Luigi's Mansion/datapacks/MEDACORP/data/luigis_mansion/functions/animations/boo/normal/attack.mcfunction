scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[0.0f,0.0f,90.0f],LeftArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.attacking
data modify entity @s[scores={AnimationProgress=1}] HandItems[0].id set from entity @s HandItems[0].tag.luigis_mansion.invisible
data modify entity @s[scores={AnimationProgress=1}] HandItems[1].id set from entity @s HandItems[1].tag.luigis_mansion.invisible
data modify entity @s[scores={AnimationProgress=20}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=20}] HandItems[0].id set from entity @s HandItems[0].tag.luigis_mansion.visible
data modify entity @s[scores={AnimationProgress=20}] HandItems[1].id set from entity @s HandItems[1].tag.luigis_mansion.visible
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0