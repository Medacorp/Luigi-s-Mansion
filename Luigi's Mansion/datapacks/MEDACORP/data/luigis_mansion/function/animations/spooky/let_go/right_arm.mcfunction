scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -600
scoreboard players remove @s[scores={AnimationProgress=1..40}] AnimationRotationX 180
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0