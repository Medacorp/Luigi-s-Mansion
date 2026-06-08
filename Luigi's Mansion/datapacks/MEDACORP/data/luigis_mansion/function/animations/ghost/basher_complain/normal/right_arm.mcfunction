scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1200
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationY 90
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationZ 90
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0