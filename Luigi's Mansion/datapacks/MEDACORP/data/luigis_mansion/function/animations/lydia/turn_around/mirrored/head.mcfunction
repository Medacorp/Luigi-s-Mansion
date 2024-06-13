scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,40.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 12
execute if entity @s[scores={AnimationProgress=26..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 12
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0