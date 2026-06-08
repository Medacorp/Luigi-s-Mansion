scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~ ~ ~36 ~
teleport @s[scores={AnimationProgress=2}] ~ ~ ~ ~72 ~
teleport @s[scores={AnimationProgress=3}] ~ ~ ~ ~108 ~
teleport @s[scores={AnimationProgress=4}] ~ ~ ~ ~144 ~
teleport @s[scores={AnimationProgress=5}] ~ ~ ~ ~180 ~
teleport @s[scores={AnimationProgress=6}] ~ ~ ~ ~216 ~
teleport @s[scores={AnimationProgress=7}] ~ ~ ~ ~252 ~
teleport @s[scores={AnimationProgress=8}] ~ ~ ~ ~288 ~
teleport @s[scores={AnimationProgress=9}] ~ ~ ~ ~324 ~
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
execute store result score @s AnimationRotationX run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10