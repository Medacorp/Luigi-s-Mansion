scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=4..7}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=9..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.equipment
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0