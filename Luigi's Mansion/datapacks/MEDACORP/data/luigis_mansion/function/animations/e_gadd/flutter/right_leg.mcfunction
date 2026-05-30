scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..4}] ~ ~0.02 ~
teleport @s[scores={AnimationProgress=5..10}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=11..14}] ~ ~0.02 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,15.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=9..14}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0
scoreboard players reset #temp Time