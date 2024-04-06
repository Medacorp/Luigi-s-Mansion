scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~2 ~
teleport @s[scores={AnimationProgress=2}] ~ ~1.8 ~
teleport @s[scores={AnimationProgress=3}] ~ ~1.6 ~
teleport @s[scores={AnimationProgress=4}] ~ ~1.4 ~
teleport @s[scores={AnimationProgress=5}] ~ ~1.2 ~
teleport @s[scores={AnimationProgress=6}] ~ ~1 ~
teleport @s[scores={AnimationProgress=7}] ~ ~0.8 ~
teleport @s[scores={AnimationProgress=8}] ~ ~0.6 ~
teleport @s[scores={AnimationProgress=9}] ~ ~0.4 ~
teleport @s[scores={AnimationProgress=10}] ~ ~0.2 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[60.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0