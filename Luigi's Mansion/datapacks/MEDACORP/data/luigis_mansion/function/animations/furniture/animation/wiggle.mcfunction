scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..7}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=10..23}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=26..32}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=32}] AnimationProgress 0