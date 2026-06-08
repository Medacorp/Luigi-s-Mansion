scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -600
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationX 200
scoreboard players add @s[scores={AnimationProgress=5..8}] AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0