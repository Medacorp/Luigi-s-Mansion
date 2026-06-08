scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..30}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 90
scoreboard players remove @s[scores={AnimationProgress=1..30}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0