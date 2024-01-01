scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..4}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=5..10}] ~ ~0.08 ~
teleport @s[scores={AnimationProgress=11..14}] ~ ~0.04 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,35.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=8..14}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0
scoreboard players reset #temp Time