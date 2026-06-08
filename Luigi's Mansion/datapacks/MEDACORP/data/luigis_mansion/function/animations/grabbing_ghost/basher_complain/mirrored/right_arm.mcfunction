scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1200
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players add @s AnimationRotationY 90
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players add @s AnimationRotationZ 90
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0