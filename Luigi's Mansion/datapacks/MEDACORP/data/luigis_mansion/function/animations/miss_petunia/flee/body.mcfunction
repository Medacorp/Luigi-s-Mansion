scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=4..8}] run scoreboard players remove @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0