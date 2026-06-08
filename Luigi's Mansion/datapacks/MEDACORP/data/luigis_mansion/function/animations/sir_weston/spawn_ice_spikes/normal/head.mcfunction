scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0