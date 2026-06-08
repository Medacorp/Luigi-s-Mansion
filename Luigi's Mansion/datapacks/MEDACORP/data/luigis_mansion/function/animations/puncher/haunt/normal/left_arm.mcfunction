scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=5..12}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=13..16}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0