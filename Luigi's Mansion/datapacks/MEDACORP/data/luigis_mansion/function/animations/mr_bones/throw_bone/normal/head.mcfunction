scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..30}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationY 60
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0