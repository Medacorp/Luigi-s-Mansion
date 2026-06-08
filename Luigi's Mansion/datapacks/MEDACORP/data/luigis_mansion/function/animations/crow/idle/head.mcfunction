scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..6}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=7..12}] run scoreboard players remove @s AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=12}] AnimationProgress 0