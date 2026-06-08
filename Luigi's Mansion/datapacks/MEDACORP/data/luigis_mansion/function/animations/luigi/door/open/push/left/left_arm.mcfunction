scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 120
scoreboard players add @s[scores={AnimationProgress=21..25}] AnimationRotationX 120
scoreboard players add @s[scores={AnimationProgress=6..15}] AnimationRotationY 80
scoreboard players remove @s[scores={AnimationProgress=16..25}] AnimationRotationY 80
scoreboard players set @s[scores={AnimationProgress=50..}] AnimationProgress 0