scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationY 50
scoreboard players remove @s[scores={AnimationProgress=4..9}] AnimationRotationY 50
scoreboard players add @s[scores={AnimationProgress=10..12}] AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0