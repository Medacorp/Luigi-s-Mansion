scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=9..12}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=13..16}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0