scoreboard players add @s AnimationProgress 1
teleport @s ~ ~0.6 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1100
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0