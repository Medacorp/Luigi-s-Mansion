scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 80
scoreboard players remove @s[scores={AnimationProgress=5..12}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=13..16}] AnimationRotationX 80
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0