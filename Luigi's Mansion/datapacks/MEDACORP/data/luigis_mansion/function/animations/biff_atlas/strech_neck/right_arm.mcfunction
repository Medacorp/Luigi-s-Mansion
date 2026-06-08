scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=36..40}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0