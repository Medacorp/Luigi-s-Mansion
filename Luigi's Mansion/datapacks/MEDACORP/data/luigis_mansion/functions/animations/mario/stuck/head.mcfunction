teleport @s[scores={AnimationProgress=1..120}] ~ ~-1.5 ~
teleport @s[scores={AnimationProgress=121}] ~ ~-1.4 ~
teleport @s[scores={AnimationProgress=122}] ~ ~-1.3 ~
teleport @s[scores={AnimationProgress=123}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=124}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=125}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=126}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=127}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=128}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=129}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=130}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=131}] ~ ~-0.55 ~
teleport @s[scores={AnimationProgress=132}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=133}] ~ ~-0.65 ~
teleport @s[scores={AnimationProgress=134}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=135}] ~ ~-0.75 ~
teleport @s[scores={AnimationProgress=136}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=137}] ~ ~-0.85 ~
teleport @s[scores={AnimationProgress=138}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=139}] ~ ~-0.95 ~
teleport @s[scores={AnimationProgress=140}] ~ ~-1 ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=121..140}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 45
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0