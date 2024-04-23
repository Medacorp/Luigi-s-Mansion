scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,180.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=41..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=23..26}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=27..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProgress=31..34}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 6
execute if entity @s[scores={AnimationProgress=35..38}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.waking
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0