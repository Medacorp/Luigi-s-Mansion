scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,-90.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
scoreboard players reset #temp Time
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.equipment
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0