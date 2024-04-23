scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=9..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=!visible] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.invisible
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=visible] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0