scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1000
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0