scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..8}] AnimationRotationX 120
scoreboard players add @s[scores={AnimationProgress=9..16}] AnimationRotationX 120
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0