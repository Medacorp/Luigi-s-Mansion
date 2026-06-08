scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=1..9}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=12..20}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0