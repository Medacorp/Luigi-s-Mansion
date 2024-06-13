scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=41..}] ~ ~-0.99 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..38}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=40..41}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 19
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0