scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 25
execute if entity @s[scores={AnimationProgress=9..24}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProgress=25..32}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 25
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=33}] AnimationProgress 0