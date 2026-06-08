scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -400
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0