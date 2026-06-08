scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0