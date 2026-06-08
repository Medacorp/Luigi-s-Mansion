scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 150
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0