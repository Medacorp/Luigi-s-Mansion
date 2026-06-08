scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..15}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=26..40}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=1..15}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=26..40}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0