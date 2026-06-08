scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players remove @s AnimationRotationX 90
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0