scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 70
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 70
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0