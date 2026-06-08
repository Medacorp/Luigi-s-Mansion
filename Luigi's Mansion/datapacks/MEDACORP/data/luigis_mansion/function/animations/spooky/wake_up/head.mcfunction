scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=..36}] ~ ~-0.4 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 950
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0