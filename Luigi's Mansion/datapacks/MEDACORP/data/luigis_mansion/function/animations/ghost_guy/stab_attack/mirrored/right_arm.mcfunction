scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 900
scoreboard players add @s[scores={AnimationProgress=20..24}] AnimationRotationX 90
scoreboard players remove @s[scores={AnimationProgress=25..29}] AnimationRotationX 90
scoreboard players add @s[scores={AnimationProgress=20..24}] AnimationRotationY 90
scoreboard players remove @s[scores={AnimationProgress=25..29}] AnimationRotationY 90
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0