scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,20.0f,110.0f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=14..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 30
execute if entity @s[scores={AnimationProgress=26..27}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 30
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0