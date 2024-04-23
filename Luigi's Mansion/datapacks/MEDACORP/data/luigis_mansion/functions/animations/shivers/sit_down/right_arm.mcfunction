scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=6..10}] ~ ~-0.1 ~
teleport @s[scores={AnimationProgress=11..15}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=16..20}] ~ ~-0.3 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-50.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
execute unless score #mirrored Selected matches 1 run data modify entity @s[tag=!visible] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.invisible
execute unless score #mirrored Selected matches 1 run data modify entity @s[tag=visible] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0