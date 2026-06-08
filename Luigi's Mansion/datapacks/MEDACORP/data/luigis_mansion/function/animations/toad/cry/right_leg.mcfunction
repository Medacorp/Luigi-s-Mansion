scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-0.16 ^0.2
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0