scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 900
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0