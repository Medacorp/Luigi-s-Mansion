scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,-90.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=20..24}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=25..29}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=20..24}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProgress=25..29}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 9
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0