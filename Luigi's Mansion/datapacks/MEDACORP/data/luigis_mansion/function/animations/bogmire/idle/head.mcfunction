scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players remove @s AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0