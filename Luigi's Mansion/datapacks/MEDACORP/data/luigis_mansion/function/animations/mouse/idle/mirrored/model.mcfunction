scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=3..6}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=7..8}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0