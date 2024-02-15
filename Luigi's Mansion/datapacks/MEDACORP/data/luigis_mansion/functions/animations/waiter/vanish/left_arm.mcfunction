scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,-90.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data ghost{tags:["dropped_off_food"]} run data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.food
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0