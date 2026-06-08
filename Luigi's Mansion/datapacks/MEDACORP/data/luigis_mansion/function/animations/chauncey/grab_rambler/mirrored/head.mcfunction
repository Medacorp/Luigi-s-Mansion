scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=15..20}] run scoreboard players add @s AnimationRotationY 80
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0