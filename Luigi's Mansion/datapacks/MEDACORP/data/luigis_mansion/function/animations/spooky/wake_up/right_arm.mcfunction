scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=..36}] ~ ~-0.4 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
scoreboard players remove @s[scores={AnimationProgress=36..40}] AnimationRotationY 40
scoreboard players add @s[scores={AnimationProgress=36..40}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0