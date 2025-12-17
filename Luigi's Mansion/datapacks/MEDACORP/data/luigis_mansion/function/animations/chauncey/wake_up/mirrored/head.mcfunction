scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=2}] ~ ~0.02 ~
teleport @s[scores={AnimationProgress=3}] ~ ~0.03 ~
teleport @s[scores={AnimationProgress=4}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=5}] ~ ~0.05 ~
teleport @s[scores={AnimationProgress=6..10}] ~ ~0.06 ~
teleport @s[scores={AnimationProgress=11}] ~ ~0.05 ~
teleport @s[scores={AnimationProgress=12}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=13}] ~ ~0.03 ~
teleport @s[scores={AnimationProgress=14}] ~ ~0.02 ~
teleport @s[scores={AnimationProgress=15}] ~ ~0.01 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0