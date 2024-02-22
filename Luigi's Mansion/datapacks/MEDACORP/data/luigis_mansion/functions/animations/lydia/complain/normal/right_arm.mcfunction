scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=21..25}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=26..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=31..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=36..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=41..45}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=46..50}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=51..55}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=56..60}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.equipment
data modify entity @s[scores={AnimationProgress=20}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0