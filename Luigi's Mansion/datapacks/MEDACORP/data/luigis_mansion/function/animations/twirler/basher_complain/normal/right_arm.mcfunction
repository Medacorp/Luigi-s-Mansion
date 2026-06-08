scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1200
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationY 90
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationZ 90
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0