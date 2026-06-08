scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=41..}] ~ ~-0.99 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
execute if entity @s[scores={AnimationProgress=1..38}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=40..41}] run scoreboard players add @s AnimationRotationX 190
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0