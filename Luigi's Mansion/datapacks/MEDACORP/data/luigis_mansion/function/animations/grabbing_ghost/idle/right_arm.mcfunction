scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=5..12}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=13..16}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0