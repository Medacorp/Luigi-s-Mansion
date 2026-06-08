scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0