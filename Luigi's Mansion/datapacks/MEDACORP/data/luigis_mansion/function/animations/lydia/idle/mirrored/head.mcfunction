scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 400
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players add @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0