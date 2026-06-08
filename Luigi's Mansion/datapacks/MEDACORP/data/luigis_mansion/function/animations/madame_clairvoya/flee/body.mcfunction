scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=4..8}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0