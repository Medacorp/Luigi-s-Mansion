scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1000
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0