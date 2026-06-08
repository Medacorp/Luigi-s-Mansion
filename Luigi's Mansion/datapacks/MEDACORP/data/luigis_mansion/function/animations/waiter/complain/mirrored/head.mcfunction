scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=5..12}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=13..16}] AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0