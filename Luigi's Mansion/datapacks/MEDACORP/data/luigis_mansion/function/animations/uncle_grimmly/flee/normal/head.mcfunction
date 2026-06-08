teleport @s ^ ^ ^0.4
scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationZ 50
scoreboard players remove @s[scores={AnimationProgress=4..7}] AnimationRotationZ 50
scoreboard players add @s[scores={AnimationProgress=9..10}] AnimationRotationZ 50
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0