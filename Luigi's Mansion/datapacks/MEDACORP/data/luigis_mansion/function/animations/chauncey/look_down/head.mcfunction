scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 90
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationX 90
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0