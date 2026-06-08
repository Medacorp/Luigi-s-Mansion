scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationZ 70
scoreboard players remove @s[scores={AnimationProgress=3..6}] AnimationRotationZ 70
scoreboard players add @s[scores={AnimationProgress=7..8}] AnimationRotationZ 70
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0