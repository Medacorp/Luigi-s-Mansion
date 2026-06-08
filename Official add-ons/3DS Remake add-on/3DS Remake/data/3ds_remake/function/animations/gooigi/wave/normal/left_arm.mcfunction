scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 130
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 130
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0