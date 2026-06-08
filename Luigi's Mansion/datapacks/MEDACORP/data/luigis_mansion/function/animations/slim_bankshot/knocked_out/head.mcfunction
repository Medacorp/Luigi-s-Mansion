scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players remove @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=25..40}] run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0