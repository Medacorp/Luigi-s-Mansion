scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -800
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0