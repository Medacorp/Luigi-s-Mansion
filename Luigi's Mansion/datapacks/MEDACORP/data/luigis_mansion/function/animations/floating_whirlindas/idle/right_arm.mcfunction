scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 900
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0