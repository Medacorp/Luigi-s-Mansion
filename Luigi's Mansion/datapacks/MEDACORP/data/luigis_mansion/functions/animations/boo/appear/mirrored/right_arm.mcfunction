scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,90.0f,0.0f]}}
teleport @s[scores={AnimationProgress=1}] ~ ~ ~ ~-36 ~
teleport @s[scores={AnimationProgress=2}] ~ ~ ~ ~-72 ~
teleport @s[scores={AnimationProgress=3}] ~ ~ ~ ~-108 ~
teleport @s[scores={AnimationProgress=4}] ~ ~ ~ ~-144 ~
teleport @s[scores={AnimationProgress=5}] ~ ~ ~ ~-180 ~
teleport @s[scores={AnimationProgress=6}] ~ ~ ~ ~-216 ~
teleport @s[scores={AnimationProgress=7}] ~ ~ ~ ~-252 ~
teleport @s[scores={AnimationProgress=8}] ~ ~ ~ ~-288 ~
teleport @s[scores={AnimationProgress=9}] ~ ~ ~ ~-324 ~
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
execute store result entity @s Pose.Head[1] float -0.01 run data get entity @e[tag=this_entity,limit=1] Rotation[1] 100