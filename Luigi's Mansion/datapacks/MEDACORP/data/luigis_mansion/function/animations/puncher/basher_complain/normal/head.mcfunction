scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=21..22}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=24..27}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=29..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0