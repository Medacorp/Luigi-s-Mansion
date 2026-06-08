scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -1800
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players add @s AnimationRotationY 180
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0