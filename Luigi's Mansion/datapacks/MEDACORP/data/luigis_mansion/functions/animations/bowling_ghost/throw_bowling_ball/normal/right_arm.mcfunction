scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-45.0f,30.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..3}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 30
execute if entity @s[scores={AnimationProgress=4..6}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 50
execute if entity @s[scores={AnimationProgress=7..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 15
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..3}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 17
execute if entity @s[scores={AnimationProgress=4..6}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 17
execute if entity @s[scores={AnimationProgress=7..8}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 15
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0