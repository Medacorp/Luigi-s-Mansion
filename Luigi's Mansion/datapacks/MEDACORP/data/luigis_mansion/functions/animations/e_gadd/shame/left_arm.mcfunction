scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[12.5f,0.0f,-5.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=11..22}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=23..24}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0
scoreboard players reset #temp Time