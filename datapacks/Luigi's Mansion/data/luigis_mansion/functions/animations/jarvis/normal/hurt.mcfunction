scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-5.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=3..6}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=7..8}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=8..}] AnimationProg 0