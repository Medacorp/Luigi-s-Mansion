scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=20..22}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=23..24}] run scoreboard players add @s AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0