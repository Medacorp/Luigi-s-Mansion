scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=..36}] ~ ~-0.4 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players add @s AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0