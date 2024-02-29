scoreboard players add @s AnimationProgress 1
teleport @s[scores={ActionTime=1}] ~ ~-0.05 ~
teleport @s[scores={ActionTime=2}] ~ ~-0.1 ~
teleport @s[scores={ActionTime=3}] ~ ~-0.15 ~
teleport @s[scores={ActionTime=4}] ~ ~-0.2 ~
teleport @s[scores={ActionTime=5}] ~ ~-0.25 ~
teleport @s[scores={ActionTime=6}] ~ ~-0.3 ~
teleport @s[scores={ActionTime=7}] ~ ~-0.35 ~
teleport @s[scores={ActionTime=8}] ~ ~-0.4 ~
teleport @s[scores={ActionTime=9}] ~ ~-0.45 ~
teleport @s[scores={ActionTime=10}] ~ ~-0.5 ~
teleport @s[scores={ActionTime=11}] ~ ~-0.45 ~
teleport @s[scores={ActionTime=12}] ~ ~-0.4 ~
teleport @s[scores={ActionTime=13}] ~ ~-0.35 ~
teleport @s[scores={ActionTime=14}] ~ ~-0.3 ~
teleport @s[scores={ActionTime=15}] ~ ~-0.25 ~
teleport @s[scores={ActionTime=16}] ~ ~-0.2 ~
teleport @s[scores={ActionTime=17}] ~ ~-0.15 ~
teleport @s[scores={ActionTime=18}] ~ ~-0.1 ~
teleport @s[scores={ActionTime=19}] ~ ~-0.05 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,90.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0