scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,180.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..18}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=19..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=61..102}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=123..140}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.waking
data modify entity @s[scores={AnimationProgress=122}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0