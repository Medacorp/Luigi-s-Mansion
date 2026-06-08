scoreboard players add @s AnimationProgress 1
teleport @s ^ ^0.133 ^1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=2}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0