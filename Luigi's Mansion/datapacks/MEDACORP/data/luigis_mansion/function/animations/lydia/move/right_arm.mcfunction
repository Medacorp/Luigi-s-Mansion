scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=9..16}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0