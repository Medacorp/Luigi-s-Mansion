scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -450
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -650
teleport @s ^ ^ ^0.2
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=5..8}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=9..12}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=13..16}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=17..20}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=21..24}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0