scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..8}] AnimationRotationX 25
scoreboard players add @s[scores={AnimationProgress=9..24}] AnimationRotationX 25
scoreboard players remove @s[scores={AnimationProgress=25..32}] AnimationRotationX 25
scoreboard players set @s[scores={AnimationProgress=33}] AnimationProgress 0