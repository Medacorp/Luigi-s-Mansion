scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 0
teleport @s[scores={AnimationProgress=36..}] ^ ^ ^0.1
scoreboard players remove @s[scores={AnimationProgress=6..10}] AnimationRotationY 50
scoreboard players add @s[scores={AnimationProgress=31..35}] AnimationRotationY 50
scoreboard players add @s[scores={AnimationProgress=51..55}] AnimationRotationZ 10
scoreboard players add @s[scores={AnimationProgress=81..86}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=87..92}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=92}] AnimationProgress 80