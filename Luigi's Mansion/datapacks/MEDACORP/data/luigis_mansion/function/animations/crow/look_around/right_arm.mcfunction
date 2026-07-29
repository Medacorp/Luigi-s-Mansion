scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 0
teleport @s[scores={AnimationProgress=36..}] ^ ^ ^0.1
scoreboard players add @s[scores={AnimationProgress=36..40}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0