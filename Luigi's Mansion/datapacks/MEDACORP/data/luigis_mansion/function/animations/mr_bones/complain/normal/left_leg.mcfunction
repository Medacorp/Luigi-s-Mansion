scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5}] ~ ~-0.1 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=7}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=8}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=9}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=10}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=11}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=13}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=14}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=15}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=16}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=17}] ~ ~-1.3 ~
teleport @s[scores={AnimationProgress=18}] ~ ~-1.4 ~
teleport @s[scores={AnimationProgress=19..20}] ~ ~-1.5 ~
teleport @s[scores={AnimationProgress=21}] ~ ~-1.4 ~
teleport @s[scores={AnimationProgress=22}] ~ ~-1.3 ~
teleport @s[scores={AnimationProgress=23}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=24}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=25}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=26}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=27}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=28}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=29}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=30}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=31}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=32}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=33}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=34}] ~ ~-0.1 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[20.0f,0.0f,30.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=7..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=26..33}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0