scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-50.0f,-10.0f,-60.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=20..29}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=30..34}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=35..39}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..19}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=20..29}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=20..29}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 6
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.banana
data modify entity @s[scores={AnimationProgress=20}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.banana_peel
data modify entity @s[scores={AnimationProgress=35}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0