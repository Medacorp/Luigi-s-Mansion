scoreboard players add @s AnimationProgress 1
teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 100
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=4..7}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=9..10}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0