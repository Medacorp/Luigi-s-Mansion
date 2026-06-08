scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=21..22}] run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=24..27}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=29..30}] run scoreboard players add @s AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0