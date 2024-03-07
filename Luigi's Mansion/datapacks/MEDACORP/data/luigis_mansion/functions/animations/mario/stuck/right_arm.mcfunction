scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..120}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=121}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=122}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=123}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=124}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=125}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=126}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=127}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=128}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=129}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=130}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=131}] ~ ~-0.25 ~
teleport @s[scores={AnimationProgress=132}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=133}] ~ ~-0.35 ~
teleport @s[scores={AnimationProgress=134}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=135}] ~ ~-0.45 ~
teleport @s[scores={AnimationProgress=136}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=137}] ~ ~-0.55 ~
teleport @s[scores={AnimationProgress=138}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=139}] ~ ~-0.65 ~
teleport @s[scores={AnimationProgress=140}] ~ ~-0.7 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-80.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=41..50}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=81..90}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=91..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=121..140}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0