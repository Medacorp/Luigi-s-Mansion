scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 700
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0