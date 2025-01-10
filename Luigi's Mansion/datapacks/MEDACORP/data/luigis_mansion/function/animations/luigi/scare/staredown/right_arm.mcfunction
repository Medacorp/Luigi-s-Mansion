scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-5.0f,0.0f,20.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-160.0f]}}
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.scared
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #4 Constants
execute store result score #temp Time run data get entity @s Pose.Head[2] 4
execute unless score #temp AnimationProgress matches 1..2 store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if score #temp AnimationProgress matches 1..2 store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players reset #temp AnimationProgress
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0