scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-99.0f,20.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..18}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0