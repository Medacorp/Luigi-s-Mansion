scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 90
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 130
scoreboard players add @s[scores={AnimationProgress=61..70}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationY 40
scoreboard players remove @s[scores={AnimationProgress=61..70}] AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0