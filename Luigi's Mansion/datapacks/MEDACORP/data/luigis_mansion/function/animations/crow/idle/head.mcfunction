scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..6}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=7..12}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=12}] AnimationProgress 0