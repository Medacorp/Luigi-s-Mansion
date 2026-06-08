scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 400
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationX 180
scoreboard players add @s[scores={AnimationProgress=5..8}] AnimationRotationX 180
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0