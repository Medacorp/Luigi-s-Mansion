scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,10.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 7
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 9
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=61..80}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=81..100}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=100..}] AnimationProgress 0