scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=5..8}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0