scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 6
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0