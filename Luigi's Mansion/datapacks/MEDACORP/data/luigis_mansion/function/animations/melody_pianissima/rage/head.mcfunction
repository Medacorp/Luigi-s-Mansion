scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0