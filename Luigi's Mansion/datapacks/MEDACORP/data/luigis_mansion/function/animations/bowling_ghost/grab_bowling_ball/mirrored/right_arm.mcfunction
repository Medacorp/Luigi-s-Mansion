scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0