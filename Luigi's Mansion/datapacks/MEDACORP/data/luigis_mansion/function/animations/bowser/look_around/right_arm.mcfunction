scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 70
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=21..30}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0