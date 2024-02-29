scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=..36}] ~ ~-0.4 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[80.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=36..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0