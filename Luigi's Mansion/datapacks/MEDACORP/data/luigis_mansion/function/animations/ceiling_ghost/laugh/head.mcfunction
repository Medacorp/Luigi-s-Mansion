scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=3..6}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=7..8}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0