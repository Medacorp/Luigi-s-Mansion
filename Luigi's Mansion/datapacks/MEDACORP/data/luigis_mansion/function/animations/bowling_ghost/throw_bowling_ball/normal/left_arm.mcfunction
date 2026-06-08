scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationY 300
scoreboard players remove @s[scores={AnimationProgress=4..6}] AnimationRotationY 300
scoreboard players remove @s[scores={AnimationProgress=7..10}] AnimationRotationX 170
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0