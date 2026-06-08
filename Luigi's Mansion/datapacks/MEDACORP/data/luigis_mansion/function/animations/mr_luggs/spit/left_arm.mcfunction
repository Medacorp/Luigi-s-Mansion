scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1300
scoreboard players remove @s[scores={AnimationProgress=1..8}] AnimationRotationX 60
scoreboard players add @s[scores={AnimationProgress=9..16}] AnimationRotationX 60
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0