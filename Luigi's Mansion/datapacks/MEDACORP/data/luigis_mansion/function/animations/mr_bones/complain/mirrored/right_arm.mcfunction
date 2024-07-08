scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=2}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=3}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=4}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=5}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=7}] ~ ~-1.3 ~
teleport @s[scores={AnimationProgress=8}] ~ ~-1.4 ~
teleport @s[scores={AnimationProgress=9..26}] ~ ~-1.5 ~
teleport @s[scores={AnimationProgress=27}] ~ ~-1.4 ~
teleport @s[scores={AnimationProgress=28}] ~ ~-1.3 ~
teleport @s[scores={AnimationProgress=29}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=30}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=31}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=32}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=33}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=34}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=35..}] ~ ~-0.6 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,-20.0f,-110.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=14..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 30
execute if entity @s[scores={AnimationProgress=26..27}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 30
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0