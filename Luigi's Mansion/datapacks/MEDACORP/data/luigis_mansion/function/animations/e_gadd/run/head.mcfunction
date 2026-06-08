scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-0.05 ^0.15
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=3..4}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=6..7}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=8..9}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0