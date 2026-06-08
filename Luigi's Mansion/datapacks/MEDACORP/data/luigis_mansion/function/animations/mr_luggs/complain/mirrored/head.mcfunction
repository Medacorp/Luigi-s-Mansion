scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
scoreboard players remove @s[scores={AnimationProgress=21..40}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=21..25}] AnimationRotationY 40
scoreboard players remove @s[scores={AnimationProgress=26..35}] AnimationRotationY 40
scoreboard players add @s[scores={AnimationProgress=36..40}] AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0