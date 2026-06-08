teleport @s ~ ~-0.35 ~ ~ ~
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 400
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0