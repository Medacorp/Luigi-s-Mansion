scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 150
scoreboard players remove @s[scores={AnimationProgress=1..6}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=7..18}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=19..24}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0