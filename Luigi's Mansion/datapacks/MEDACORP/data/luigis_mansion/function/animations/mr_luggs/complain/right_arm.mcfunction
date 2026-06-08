scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 300
scoreboard players remove @s[scores={AnimationProgress=21..40}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=21..40}] AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0