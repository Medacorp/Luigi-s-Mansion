scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 12
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 12
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.hold_bone
data modify entity @s[scores={AnimationProgress=40}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0