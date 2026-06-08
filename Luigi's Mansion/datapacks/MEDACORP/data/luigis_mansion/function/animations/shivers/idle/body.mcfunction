scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=9..16}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0