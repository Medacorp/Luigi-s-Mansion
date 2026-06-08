scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationY 60
scoreboard players add @s[scores={AnimationProgress=4..7}] AnimationRotationY 60
scoreboard players remove @s[scores={AnimationProgress=9..10}] AnimationRotationY 60
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
execute store result score @s AnimationRotationX run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10