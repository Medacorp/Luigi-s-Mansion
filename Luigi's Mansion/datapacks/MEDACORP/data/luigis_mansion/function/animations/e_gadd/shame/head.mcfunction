scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 450
scoreboard players add @s[scores={AnimationProgress=3..12}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=13..24}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0